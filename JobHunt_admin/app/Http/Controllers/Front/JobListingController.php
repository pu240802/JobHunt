<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Job;
use App\Models\JobCategory;
use App\Models\JobLocation;
use App\Models\JobType;
use App\Models\JobExperience;
use App\Models\JobGender;
use App\Models\JobSalaryRange;
use App\Mail\Websitemail;
use App\Models\PageOtherItem;
use App\Models\Advertisement;
use App\Models\CandidateSearchHistory;
use App\Models\CandidateExperience;
use Auth;

class JobListingController extends Controller
{
    public function index(Request $request){

        $job_categories = JobCategory::orderBy('name', 'asc')->get();
        $job_locations = JobLocation::orderBy('name', 'asc')->get();
        $job_types = JobType::orderBy('name', 'asc')->get();
        $job_experiences = JobExperience::orderBy('id', 'asc')->get();
        $job_genders = JobGender::orderBy('id', 'asc')->get();
        $job_salary_ranges = JobSalaryRange::orderBy('id', 'asc')->get();

        $form_title = $request->title;
        $form_category = $request->category;
        $form_location = $request->location;
        $form_type = $request->type;
        $form_experience = $request->experience;
        $form_gender = $request->gender;
        $form_salary_range = $request->salary_range;

        $jobs = Job::with('rCompany', 'rJobCategory', 'rJobLocation', 'rJobSalaryRange', 'rJobType', 'rJobExperience', 'rJobGender')->orderBy('id', 'desc');

        // Kiểm tra xem ứng viên đã đăng nhập hay chưa
        // if (Auth::guard('candidate')->check()) {
        //     $candidateId = Auth::guard('candidate')->user()->id;

        //     // Nếu có tìm kiếm, lưu lịch sử
        //     if ($form_title) {
        //         CandidateSearchHistory::create([
        //             'candidate_id' => $candidateId,
        //             'search_title' => $form_title,
        //         ]);
        //     } else {
        //         // Nếu không có tìm kiếm, lấy lịch sử mới nhất
        //         $latestSearch = CandidateSearchHistory::where('candidate_id', $candidateId)
        //                                               ->orderBy('created_at', 'desc')
        //                                               ->first();
        //         if ($latestSearch) {
        //             $form_title = $latestSearch->search_title;
        //         }
        //     }
        // }

        // Kiểm tra xem ứng viên đã đăng nhập hay chưa
    if (Auth::guard('candidate')->check()) {
        $candidateId = Auth::guard('candidate')->user()->id;

        // Nếu có tìm kiếm, lưu lịch sử
        if ($form_title) {
            // Xóa lịch sử tìm kiếm cũ của ứng viên
            CandidateSearchHistory::where('candidate_id', $candidateId)->delete();
            
            // Tạo lịch sử tìm kiếm mới
            CandidateSearchHistory::create([
                'candidate_id' => $candidateId,
                'search_title' => $form_title,
            ]);
        } else {
            // Nếu không có tìm kiếm, lấy lịch sử mới nhất
            $latestSearch = CandidateSearchHistory::where('candidate_id', $candidateId)
                                                  ->orderBy('created_at', 'desc')
                                                  ->first();
            if ($latestSearch) {
                $form_title = $latestSearch->search_title;
            } else {
                // Nếu không có lịch sử tìm kiếm, gợi ý công việc dựa trên job_position từ experience của ứng viên
                $jobPositions = CandidateExperience::where('candidate_id', $candidateId)
                                                    ->pluck('job_position')
                                                    ->toArray();

                // Kiểm tra nếu tất cả job_position đều trống
                $allPositionsEmpty = true;
                foreach ($jobPositions as $position) {
                    if (!empty($position)) {
                        $allPositionsEmpty = false;
                        break;
                    }
                }

                // Nếu có ít nhất một job_position không trống, thì lọc công việc dựa trên job_position
                if (!$allPositionsEmpty) {
                    $jobs = $jobs->where(function($query) use ($jobPositions) {
                        foreach ($jobPositions as $position) {
                            if (!empty($position)) {
                                $query->orWhere('title', 'LIKE', '%' . $position . '%');
                            }
                        }
                    });
                }
            }
        }
    }


        if ($form_title != null) {
            $jobs = $jobs->where('title', 'LIKE', '%' . $form_title . '%');
        }
        if ($form_category != null) {
            $jobs = $jobs->where('job_category_id', $form_category);
        }
        if ($form_location != null) {
            $jobs = $jobs->where('job_location_id', $form_location);
        }
        if ($form_type != null) {
            $jobs = $jobs->where('job_type_id', $form_type);
        }
        if ($form_experience != null) {
            $jobs = $jobs->where('job_experience_id', $form_experience);
        }
        if ($form_gender != null) {
            $jobs = $jobs->where('job_gender_id', $form_gender);
        }
        if ($form_salary_range != null) {
            $jobs = $jobs->where('job_salary_range_id', $form_salary_range);
        }

        $jobs = $jobs->paginate(5)->withQueryString();
        $jobs->appends(request()->query())->links();

        $advertisement_data = Advertisement::where('id', 1)->first();
        $other_page_item = PageOtherItem::where('id', 1)->first();

        return view('front.job_listing', compact('jobs', 'job_categories', 'job_locations', 'job_types', 'job_experiences', 'job_genders', 'job_salary_ranges', 'form_title', 'form_category', 'form_location', 'form_type', 'form_experience', 'form_gender', 'form_salary_range', 'advertisement_data', 'other_page_item'));
    }


    public function detail($id){

        

       $job_single = Job:: with('rCompany','rJobCategory','rJobLocation','rJobSalaryRange',
        'rJobType','rJobExperience','rJobGender')->where('id', $id)->first();

        $jobs = Job::with('rCompany','rJobCategory','rJobLocation','rJobSalaryRange',
       'rJobType','rJobExperience','rJobGender')->where('job_category_id', $job_single->job_category_id)->get();

       $other_page_item = PageOtherItem::where('id',1)->first();


        return view('front.job', compact('job_single','jobs','other_page_item'));
    }
    public function send_email(Request $request){
       
    
    $request->validate([
        'visitor_name' => 'required',
        'visitor_email' => 'required|email',
        'visitor_phone' => 'required|regex:/^[0-9]{10}$/u',
        'visitor_message' => 'required',
        
    ]);

    $subject ='Enquery for job: '.$request->job_title;
    $message = 'Visitor Information: <br>';
    $message .= 'Name: '.$request->visitor_name.'<br>';
    $message .= 'Email: '.$request->visitor_email.'<br>';
    $message .= 'Phone: '.$request->visitor_phone.'<br>';
    $message .= 'Message: '.$request->visitor_message.'<br>';

    \Mail::to($request->receive_email)->send(new Websitemail($subject, $message));

    return redirect()->back()->with('success','Email is sent successfully.');
    }
}

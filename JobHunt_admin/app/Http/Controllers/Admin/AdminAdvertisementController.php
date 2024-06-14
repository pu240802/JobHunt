<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use Illuminate\Http\Request;

class AdminAdvertisementController extends Controller
{
    public function index(){
        $advertisement_data = Advertisement::where('id',1)->first();
        return view('admin.advertisement',compact('advertisement_data'));
    }
    public function update(Request $request){
        $obj = Advertisement::where('id',1)->first();

        if ($request->hasFile('job_listing_ad')) {
            $request->validate([
                'job_listing_ad' => 'image|mimes:jpg,jpeg,png,gif',
            ]);
        
            // Kiểm tra xem tệp tin cũ tồn tại hay không
            if (file_exists(public_path('uploads/'.$obj->job_listing_ad))) {
                unlink(public_path('uploads/'.$obj->job_listing_ad));
            }
        
            $ext = $request->file('job_listing_ad')->extension();
            $final_name = 'job_listing_ad'.'.'.$ext;
        
            $request->file('job_listing_ad')->move(public_path('uploads/'), $final_name);
        
            $obj->job_listing_ad = $final_name;
        }


        if ($request->hasFile('company_listing_ad')) {
            $request->validate([
                'company_listing_ad' => 'image|mimes:jpg,jpeg,png,gif',
            ]);
        
            // Kiểm tra xem tệp tin cũ tồn tại hay không
            if (file_exists(public_path('uploads/'.$obj->company_listing_ad))) {
                unlink(public_path('uploads/'.$obj->company_listing_ad));
            }
        
            $ext = $request->file('company_listing_ad')->extension();
            $final_name = 'company_listing_ad'.'.'.$ext;
        
            $request->file('company_listing_ad')->move(public_path('uploads/'), $final_name);
        
            $obj->company_listing_ad = $final_name;
        }



        $obj->job_listing_ad_url = $request->job_listing_ad_url;
        $obj->job_listing_ad_status = $request->job_listing_ad_status;
        $obj->company_listing_ad_url = $request->company_listing_ad_url;
        $obj->company_listing_ad_status = $request->company_listing_ad_status;
       
        $obj->update();

        return redirect()->back()->with('success',' Data is updated successfully.');

    }
}

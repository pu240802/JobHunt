@extends('front.layout.app')



@section('main_content')

        <div
            class="page-top"
            style="background-image: url('{{ asset('uploads/'.$global_banner_data->banner_candidate_panel) }}')"
        >
        <div class="bg"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Bookmarked Job </h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-content user-panel">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="card">
                        
                            @include('candidate.sidebar')

                         </div>
                    </div>
                    <div class="col-lg-9 col-md-12">
                                    
                       
                                {{-- @if(!$bookmarked_jobs->count())
                                    <div class="text-danger"> No data  found</div> 

                                @else --}}
                                @php 
                                $valid_bookmarked_jobs = $bookmarked_jobs->filter(function($item) {
                                    if (!isset($item->rJob) || !isset($item->rJob->rCompany)) {
                                        return false;
                                    }
                                    $this_company_id = $item->rJob->rCompany->id;
                                    $order_data = \App\Models\Order::where('company_id', $this_company_id)
                                        ->where('currently_active', 1)
                                        ->first();
                                    return $order_data && date('Y-m-d') <= $order_data->expire_date;
                                });
                            @endphp
                                        
                            @if($valid_bookmarked_jobs->isEmpty())
                            <div class="text-danger"> No data  found</div> 
                            @else
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <th>SL</th>
                                                <th>Job Title</th>
                                               
                                                <th class="w-150">Detail</th>
                                            </tr>
                                            @foreach($valid_bookmarked_jobs as $item)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $item->rJob->title }}</td>
                                                    <td>
                                                        <a
                                                            href="{{ route('job', $item->job_id) }}"
                                                            class="btn btn-primary btn-sm">Detail</a>
                                                        <a
                                                            href="{{ route('candidate_bookmark_delete', $item->id) }}"
                                                            class="btn btn-danger btn-sm"
                                                            onClick="return confirm('Bạn có chắc chắn không?');">Delete</a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            @endif
                        </div>                   
                    </div>
                </div>
            </div>
          
    @endsection
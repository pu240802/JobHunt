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
                        <h2>Edit Awards </h2>
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
                                    
                        <a
                        href="{{ route('candidate_award') }}"
                        class="btn btn-primary btn-sm mb-2"
                        ><i class="fas fa-plus"></i> See All</a
                    >
                    <form action="{{ route('candidate_award_update', $award_single->id) }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <label for="">Title *</label>
                                <div class="form-group">
                                    <input
                                        type="text"
                                        name="title"
                                        class="form-control"
                                        value ="{{ $award_single->title }}"
                                    />
                                </div>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="">Description *</label>
                                <div class="form-group">
                                    <input
                                        type="text"
                                        name="description"
                                        class="form-control h-100"
                                        value ="{{ $award_single->description }}"
                                    />
                                </div>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="">Date *</label>
                                <div class="form-group">
                                    <input
                                        type="text"
                                        name="date"
                                        class="form-control datepicker"
                                        
                                        value ="{{ $award_single->date }}"
                                    />
                                </div>
                            </div>
                           
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input
                                        type="submit"
                                        class="btn btn-primary"
                                        value="Update"
                                    />
                                </div>
                            </div>
                        </div>
                    </form>

                    </div>                   
                </div>
            </div>
        </div>
      
    
@endsection
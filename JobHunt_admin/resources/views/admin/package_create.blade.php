@extends('admin.layout.app')

@section('heading', 'Create Package')

@section('button')
    <div >
        <a href="{{ route('admin_package') }}" class="btn btn-primary"><i class="fas fa-plus"></i> View All</a>
    </div>
@endsection

@section('main_content')

<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_package_store')}}" method="POST">
                        @csrf

                        <div class="row">
                            <div class="col-md-6">                      
                                <div class="form-group mb-3">
                                    <label>Package Name *</label>
                                    <input type="text" class="form-control" name="package_name" >
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Package Price *</label>
                                    <input type="text" class="form-control" name="package_price" >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">                      
                                <div class="form-group mb-3">
                                    <label>Number of Days*</label>
                                    <input type="text" class="form-control" name="package_days" >
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Display Time*</label>
                                    <input type="text" class="form-control" name="package_display_time" >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">                      
                                <div class="form-group mb-3">
                                    <label>Total Allowed Jobs*</label>
                                    <input type="text" class="form-control" name="total_allowed_jobs" >
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Total Allowed Featured Jobs*</label>
                                    <input type="text" class="form-control" name="total_allowed_featured_jobs" >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">                      
                                <div class="form-group mb-3">
                                    <label>Total Allowed Photo*</label>
                                    <input type="text" class="form-control" name="total_allowed_photo" >
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label>Total Allowed Video*</label>
                                    <input type="text" class="form-control" name="total_allowed_video" >
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
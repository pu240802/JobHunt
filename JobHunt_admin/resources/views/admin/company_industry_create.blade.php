@extends('admin.layout.app')

@section('heading', 'Cearte Company Industry')

@section('button')
    <div >
        <a href="{{ route('admin_company_industry') }}" class="btn btn-primary"><i class="fas fa-plus"></i> View All</a>
    </div>
@endsection

@section('main_content')

<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_company_industry_store')}}" method="POST">
                        @csrf

                        <div class="form-group mb-3">
                            <label> Name *</label>
                            <input type="text" class="form-control" name="name" >
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
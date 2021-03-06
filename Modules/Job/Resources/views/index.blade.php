@extends('layouts.master')

@section('title')
Job
@endsection

@push('stylesheets')
<link rel="stylesheet" href="{{asset('assets/modules/datatables.net-bs4/css/dataTables.bootstrap4.min.css')}}" />
<link rel="stylesheet" href="{{asset('assets/modules/datatables.net-select-bs4/css/select.bootstrap4.min.css')}}" />
<link rel="stylesheet" href="{{asset('assets/modules/izitoast/dist/css/iziToast.min.css')}}" />
@endpush

@section('content')
<section class="section">
    <div class="section-header">
        <h1>{{__('Jobs')}}</h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="#">{{__('Dashboard')}}</a></div>
            <div class="breadcrumb-item">{{__('Jobs')}}</div>
        </div>
    </div>

    <div class="section-body">
        <div class="row">
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card card-primary">
                    <div class="card-header">
                        <h4>{{__('Manage Jobs')}}</h4>
                        <div class="card-header-action">
                            <button data-create="{{route('job.create')}}" id="btn-new-job" data-url=""
                                class="btn btn-primary">
                                <i class="fas fa-plus-circle"></i>
                                {{__('Create New')}}
                            </button>
                        </div>
                    </div>
                    <div class="card-body">

                        <table data-url="{{route('job.index')}}" id="job-data-table"
                            class="table table-bordered table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>{{__('Serial')}}</th>
                                    <th>{{__('Job Title')}}</th>
                                    <th>{{__('Job Description')}}</th>
                                    <th>{{__('Status')}}</th>
                                    <th>{{__('Create By')}}</th>
                                    <th>{{__('Create Date')}}</th>
                                    <th>{{__('Action')}}</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@push('scripts')
<script src="{{asset('assets/modules/datatables/media/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/modules/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/modules/datatables.net-select-bs4/js/select.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/modules/datatables.net-select-bs4/js/select.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/modules/izitoast/dist/js/iziToast.min.js')}}"></script>
<script src="{{asset('assets/modules/sweetalert/dist/sweetalert.min.js')}}"></script>
<script src="{{ Module::asset('job:js/job.js') }}"></script>
@endpush
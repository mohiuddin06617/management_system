@extends('layouts.master')

@section('title')
Departments
@endsection

@push('stylesheets')
<link rel="stylesheet" href="{{asset('assets/modules/datatables.net-bs4/css/dataTables.bootstrap4.min.css')}}" />
<link rel="stylesheet" href="{{asset('assets/modules/datatables.net-select-bs4/css/select.bootstrap4.min.css')}}" />
<link rel="stylesheet" href="{{asset('assets/modules/izitoast/dist/css/iziToast.min.css')}}" />
{{-- <link rel="stylesheet" href="{{ asset('department:css/department.css') }}"> --}}
@endpush

@section('content')
<section class="section">
    <div class="section-header">
        <h1>{{__('Departments')}}</h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="#">{{__('Dashboard')}}</a></div>
            <div class="breadcrumb-item">{{__('Departments')}}</div>
        </div>
    </div>

    <div class="section-body">
        <div class="row">
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card card-primary">
                    <div class="card-header">
                        <h4>{{__('Manage Departments')}}</h4>
                        <div class="card-header-action">
                            <button data-create="{{route('department.create')}}" id="btn-new-department" data-url=""
                                class="btn btn-primary">
                                <i class="fas fa-plus-circle"></i>
                                {{__('Create New')}}
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <table id="departmentTable" class=" table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Serial</th>
                                    <th>Department Name</th>
                                    <th>Description</th>
                                    <th>Status</th>
                                    <th>Create By</th>
                                    <th>Create Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                $serial = 1;
                                @endphp
                                @foreach ($departments as $department)
                                <tr>
                                    <td>{{$serial++}}</td>
                                    <td>{{$department->name}}</td>
                                    <td>{{$department->description}}</td>
                                    <td>
                                        <div
                                            class="badge {{($department->status == 'Active')?'badge-success':'badge-danger'}}">
                                            {{$department->status}}
                                        </div>
                                    </td>
                                    <td>{{$department->creator->name}}</td>
                                    <td>{{date('d-m-Y', strtotime($department->created_at))}}</td>
                                    <td>
                                        <div class="btn-group btn-group-sm" role="group" aria-label="Basic example">
                                            <button type="button"
                                                class="btn btn-success btn-icon btn-department-details"
                                                data-toggle="tooltip" data-placement="top" title=""
                                                data-original-title="Details" data-id="{{$department->id}}">
                                                <i class="fas fa-info-circle"></i>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-icon btn-department-edit"
                                                data-toggle="tooltip" data-placement="top" title=""
                                                data-original-title="Edit" data-id="{{$department->id}}">
                                                <i class="far fa-edit"></i>
                                            </button>
                                            <button type="button" class="btn btn-danger btn-icon btn-department-delete"
                                                data-toggle="tooltip" data-placement="top" title=""
                                                data-original-title="Delete" data-id="{{$department->id}}">
                                                <i class="fas fa-trash"></i></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
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
<script src="{{ Module::asset('department:js/department.js') }}"></script>
@endpush
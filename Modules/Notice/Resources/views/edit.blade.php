@extends('layouts.master')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{__('Notices')}}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{url('/')}}">{{__('Dashboard')}}</a></div>
                <div class="breadcrumb-item"><a href="{{route('notices.index')}}">{{__('Notice')}}</a></div>
                <div class="breadcrumb-item active">{{__('Edit')}}</div>
            </div>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>{{__('Edit Notices')}}</h4>
                            <div class="card-header-action">
                                <a href="{{route('notices.index')}}" class="btn btn-primary">
                                    <i class="fas fa-list"></i>
                                    {{__('Notices')}}
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <form method="post" action="{{route('notices.update',$notice)}}" class="form-horizontal">
                                @csrf
                                @method('PUT')
                                <div class="form-group row">
                                    <label for="title" class="col-sm-3 col-form-label font-weight-bold text-md-right">{{__('Title')}} </label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="title" name="title" placeholder="{{__('Notice Title')}}" value="{{$notice->title}}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="description" class="col-sm-3 col-form-label font-weight-bold text-md-right">{{__('Description')}}</label>
                                    <div class="col-sm-9">
                                        <textarea type="description" class="form-control summernote" rows="2" id="description" name="description" placeholder="{{__('Description')}}"> {{$notice->description}}</textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                        <button class="btn btn-primary" type="submit">
                                            <i class="fas fa-check"></i>
                                            {{__('Save')}}
                                        </button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('stylesheets')
    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{asset('assets/modules/datatables.net-bs4/css/dataTables.bootstrap4.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('assets/modules/datatables.net-select-bs4/css/select.bootstrap4.min.css')}}"/>
@endpush

@push('scripts')
    <script src="{{asset('assets/modules/datatables/media/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/modules/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('assets/modules/datatables.net-select-bs4/js/select.bootstrap4.min.js')}}"></script>
@endpush
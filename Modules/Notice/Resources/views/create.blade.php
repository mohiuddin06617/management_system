@extends('layouts.master')

@section('content')

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
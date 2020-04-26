@extends('department::layouts.master')

@section('title')
    Perfect HRM::Departments
@endsection

@push('styles')
    <link rel="stylesheet" href="{{ mix('department:css/department.css') }}">
@endpush

@section('header')
    Departments Page
@endsection

@section('content')

    <h1>Content Will Be Here</h1>
@endsection


@push('scripts')
    <script src="{{ mix('js/department.js') }}"></script>
@endpush


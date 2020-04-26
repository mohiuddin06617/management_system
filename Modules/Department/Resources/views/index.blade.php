{{--@extends('department::layouts.master')--}}

{{--@section('content')--}}
{{--    <h1>Hello World</h1>--}}

{{--    <p>--}}
{{--        This view is loaded from module: {!! config('department.name') !!}--}}
{{--    </p>--}}
{{--@endsection--}}

@extends('department::layouts.master')

@section('title')
    PerfetHRM::Departments
@endsection

@section('content')

    <section class="section">
        <div class="section-header">
            <h1>Department Page</h1>
        </div>

        <div class="section-body">
        </div>
    </section>

{{--    <section class="section">--}}
{{--        @if($departments->count()>0)--}}
{{--            @foreach($departments as $department)--}}
{{--                {{$department->name}}--}}
{{--            @endforeach--}}
{{--        @else--}}
{{--            <p>No Data</p>--}}
{{--        @endif--}}
{{--        <h1>Hello World</h1>--}}

{{--        <p>--}}
{{--            This view is loaded from module: {!! config('notice.name') !!}--}}
{{--        </p>--}}
{{--    </section>--}}

@endsection



{{-- Laravel Mix - CSS File --}}
{{-- <link rel="stylesheet" href="{{ mix('css/department.css') }}"> --}}


    {{-- Laravel Mix - JS File --}}
    {{-- <script src="{{ mix('js/department.js') }}"></script> --}}





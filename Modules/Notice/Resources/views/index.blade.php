@extends('layouts.master')

@section('content')
    <section class="section">
        @if($notices->count()>0)
            @foreach($notices as $notice)
                {{$notice->title}}
            @endforeach
        @else
            <p>No Data</p>
        @endif
        <h1>Hello World</h1>

        <p>
            This view is loaded from module: {!! config('notice.name') !!}
        </p>
    </section>

@endsection

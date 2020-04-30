<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>{{ env('APP_NAME') }} :: @yield('title')</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="{{asset('assets/modules/bootstrap/dist/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/modules/fontawesome-free/css/all.min.css')}}">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{asset('assets/modules/jqvmap/dist/jqvmap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/modules/weathericons/css/weather-icons.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/modules/weathericons/css/weather-icons-wind.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/modules/summernote/dist/summernote-bs4.css')}}">
    <link rel="stylesheet" href="{{asset('assets/modules/select2/dist/css/select2.min.css')}}">

    @stack('stylesheets')
    <!-- Template CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/components.css')}}">
</head>
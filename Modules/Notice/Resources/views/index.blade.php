@extends('layouts.master')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{__('Notices')}}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="#">{{__('Dashboard')}}</a></div>
                <div class="breadcrumb-item">{{__('Notices')}}</div>
            </div>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>{{__('Manage Notices')}}</h4>
                            <div class="card-header-action">
                                <a href="{{route('notices.create')}}" class="btn btn-primary">
                                    <i class="fas fa-plus-circle"></i>
                                    {{__('Create New')}}
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped dataTable" id="table-1">
                                    <thead>
                                    <tr>
                                        <th class="text-center">
                                            # {{__('SL')}}
                                        </th>
                                        <th>{{__('Title')}}</th>
                                        <th>{{__('Description')}}</th>
                                        <th>{{__('Created At')}}</th>
                                        <th>{{__('Action')}}</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    @if($notices->count()>0)
                                        @foreach($notices as  $key => $notice)
                                            <tr>
                                                <td class="text-center align-middle">
                                                    {{ $loop->iteration }}
                                                </td>
                                                <td>{{$notice->title}}</td>
                                                <td class="align-middle">
                                                    {!! $notice->description !!}
                                                </td>
                                                <td>{{$notice->created_at}}</td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a href="{{route('notices.edit',$notice->id)}}" class="btn btn-primary btn-sm">
                                                            <i class="fas fa-pencil-alt"></i>
                                                            <span>{{__('Edit')}}</span>
                                                        </a>
                                                        <form method="post" action="{{route('notices.destroy',$notice->id)}}">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit" data-selected-value="{{$notice->id}}" class="btn btn-danger btn-sm delete-button">
                                                                <i class="fas fa-trash"></i>
                                                                <span>{{__('Delete')}}</span>
                                                            </button>
                                                        </form>
                                                    </div>
                                                </td>
                                            </tr>

                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="5">
                                                <h5 class="text-danger text-center">{{__('No Data')}}</h5>
                                            </td>
                                        </tr>
                                    @endif
                                    </tbody>
                                </table>
                            </div>
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
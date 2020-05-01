<?php

namespace Modules\Job\Http\Controllers;

use DataTables;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Modules\Job\Entities\Job;

class JobController extends Controller {
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index( Request $request ) {
        if ( $request->ajax() ) {
            $jobs = Job::with( 'creator' )->latest()->get();
            return Datatables::of( $jobs )
                ->addIndexColumn()
                ->editColumn( 'status', function ( $row ) {
                    return view( 'job::parts.status', compact( 'row' ) );
                } )
                ->editColumn( 'create_by', function ( $row ) {
                    return $row->creator->name;
                } )
                ->editColumn( 'created_at', function ( $row ) {
                    return date( 'd-m-Y', strtotime( $row->created_at ) );
                } )
                ->addColumn( 'action', function ( $row ) {
                    return view( 'job::parts.action', compact( 'row' ) );
                } )
                ->rawColumns( ['status', 'action'] )
                ->make( true );
        }
        return view( 'job::index' );
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create() {
        return view( 'job::create' );
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store( Request $request ) {
        $validatedData = $request->validate( [
            'title' => 'required|unique:jobs,title|max:255',
        ] );

        $job = new Job();
        $job->title = $request->title;
        $job->description = $request->description;
        $job->create_by = Auth::id();
        $job->save();

        return response()->json( [
            'message' => 'Job Added Successfully !',
        ] );

    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show( $id ) {
        return view( 'job::show' );
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit( $id ) {
        $job = Job::find( $id );
        return view( 'job::edit', compact( 'job' ) );
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update( Request $request, $id ) {
        $job = Job::find( $id );

        if ( $job->name != $request->name ) {
            $validatedData = $request->validate( [
                'title' => 'required|unique:jobs,title|max:255',
            ] );
        }

        $job->title = $request->get( 'title' );
        $job->status = $request->get( 'status' );
        $job->description = $request->get( 'description' );
        $job->save();

        return response()->json( [
            'message' => 'Job Updated Successfully !',
        ] );
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy( $id ) {
        $job = Job::find( $id );
        $job->delete();
        return response()->json( [
            'message' => 'Job Deleted Successfully !',
        ] );
    }
}

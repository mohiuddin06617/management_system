<?php

namespace Modules\Department\Http\Controllers;

use DataTables;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Modules\Department\Entities\Department;

class DepartmentController extends Controller {
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index( Request $request ) {

        if ( $request->ajax() ) {
            $departments = Department::with( 'creator' )->latest()->get(); //User::latest()->get();
            return Datatables::of( $departments )
                ->addIndexColumn()
                ->editColumn( 'status', function ( $row ) {
                    $status = '<div class="badge ' . (  ( $row->status == 'Active' ) ? 'badge-success' : 'badge-danger' ) . '">' . $row->status . '</div>';
                    return $status;
                } )
                ->editColumn( 'create_by', function ( $row ) {
                    return $row->creator->name;
                } )
                ->editColumn( 'created_at', function ( $row ) {
                    return date( 'd-m-Y', strtotime( $row->created_at ) );
                } )
                ->addColumn( 'action', function ( $row ) {

                    /**

                <button type="button" class="btn btn-success btn-icon btn-department-details"
                data-toggle="tooltip" data-placement="top" title="" data-original-title="Details"
                data-id="' . $row->id . '" data-details="' . route( 'department.show', $row->id ) . '">
                <i class="fas fa-info-circle"></i>
                </button>

                 */

                    $btn = '<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">

                                <button type="button" class="btn btn-warning btn-icon btn-edit-department"
                                    data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                    data-edit="' . route( 'department.edit', $row->id ) . '">
                                    <i class="far fa-edit"></i>
                                </button>
                                <button type="button" class="btn btn-danger btn-icon btn-delete-department"
                                    data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                    data-id="' . $row->id . '" data-delete="' . route( 'department.destroy', $row->id ) . '">
                                    <i class="fas fa-trash"></i></i>
                                </button>
                            </div>';

                    return $btn;
                } )
                ->rawColumns( ['status', 'action'] )
                ->make( true );
        }
        return view( 'department::index' );
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create() {
        return view( 'department::create' );
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store( Request $request ) {

        $validatedData = $request->validate( [
            'name' => 'required|unique:departments,name|max:255',
        ] );

        $dept = new Department();
        $dept->name = $request->name;
        $dept->description = $request->description;
        $dept->logo_icon = $request->logo_icon;
        $dept->create_by = Auth::id();
        $dept->save();

        return response()->json( [
            'message' => 'Department Added Successfully !',
        ] );

    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show( $id ) {
        // $department = Department::with( 'creator' )->find( $id );
        // return view( 'department::show', compact( 'department' ) );
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit( $id ) {
        $department = Department::find( $id );
        return view( 'department::edit', compact( 'department' ) );
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update( Request $request, $id ) {

        $department = Department::find( $id );

        if ( $department->name != $request->name ) {
            $validatedData = $request->validate( [
                'name' => 'required|unique:departments,name|max:255',
            ] );
        }

        $department->name = $request->get( 'name' );
        $department->logo_icon = $request->get( 'logo_icon' );
        $department->status = $request->get( 'status' );
        $department->description = $request->get( 'description' );
        $department->save();

        return response()->json( [
            'message' => 'Department Updated Successfully !',
        ] );
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy( $id ) {
        $department = Department::find( $id );
        $department->delete();
        return response()->json( [
            'message' => 'Department Deleted Successfully !',
        ] );
    }
}

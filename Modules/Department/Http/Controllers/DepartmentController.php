<?php

namespace Modules\Department\Http\Controllers;

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
        $departments = Department::with( 'creator' )->latest()->get();
        return view( 'department::index', compact( 'departments' ) );
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
            'depratment_name' => 'required|unique:departments,name|max:255',
        ] );

        $dept = new Department();
        $dept->name = $request->depratment_name;
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
        return view( 'department::show' );
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit( $id ) {
        return view( 'department::edit' );
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update( Request $request, $id ) {
        //
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy( $id ) {
        //
    }
}

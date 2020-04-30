<?php

namespace Modules\Notice\Http\Controllers;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Illuminate\View\View;
use Modules\Notice\Entities\Notice;

class NoticeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     * @return Application|Factory|View
     */
    public function index()
    {
        $notices = Notice::all();
        return view('notice::index', compact('notices'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        return view('notice::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $notice = new Notice();
        $notice->user_id = auth()->user()->id;
        $notice->title = $request->title;
        $notice->description = $request->description;
        $notice->save();
        return redirect()->route('notices.index')->with('success', __('Notice successfully created.'));
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show($id)
    {
        return view('notice::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit(Notice $notice)
    {
        return view('notice::edit', compact('notice'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(Request $request, Notice $notice)
    {
        $notice->title = $request->title;
        $notice->description = $request->description;
        $notice->save();
        return redirect()->route('notices.index')->with('success', __('Notice successfully updated.'));
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy(Notice $notice)
    {
        $notice->delete();
        return redirect()->route('notices.index')->with('success', __('Notice successfully deleted.'));

    }
}

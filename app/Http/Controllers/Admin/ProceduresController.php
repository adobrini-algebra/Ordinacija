<?php

namespace App\Http\Controllers\Admin;

use App\Procedure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreProceduresRequest;
use App\Http\Requests\Admin\UpdateProceduresRequest;

class ProceduresController extends Controller
{
    /**
     * Display a listing of Procedure.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (! Gate::allows('procedure_access')) {
            return abort(401);
        }


                $procedures = Procedure::all();

        return view('admin.procedures.index', compact('procedures'));
    }

    /**
     * Show the form for creating new Procedure.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (! Gate::allows('procedure_create')) {
            return abort(401);
        }
        return view('admin.procedures.create');
    }

    /**
     * Store a newly created Procedure in storage.
     *
     * @param  \App\Http\Requests\StoreProceduresRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProceduresRequest $request)
    {
        if (! Gate::allows('procedure_create')) {
            return abort(401);
        }
        $procedure = Procedure::create($request->all());



        return redirect()->route('admin.procedures.index');
    }


    /**
     * Show the form for editing Procedure.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (! Gate::allows('procedure_edit')) {
            return abort(401);
        }
        $procedure = Procedure::findOrFail($id);

        return view('admin.procedures.edit', compact('procedure'));
    }

    /**
     * Update Procedure in storage.
     *
     * @param  \App\Http\Requests\UpdateProceduresRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProceduresRequest $request, $id)
    {
        if (! Gate::allows('procedure_edit')) {
            return abort(401);
        }
        $procedure = Procedure::findOrFail($id);
        $procedure->update($request->all());



        return redirect()->route('admin.procedures.index');
    }


    /**
     * Display Procedure.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (! Gate::allows('procedure_view')) {
            return abort(401);
        }
        $appointments = \App\Appointment::where('procedure_id', $id)->get();

        $procedure = Procedure::findOrFail($id);

        return view('admin.procedures.show', compact('procedure', 'appointments'));
    }


    /**
     * Remove Procedure from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (! Gate::allows('procedure_delete')) {
            return abort(401);
        }
        $procedure = Procedure::findOrFail($id);
        $procedure->delete();

        return redirect()->route('admin.procedures.index');
    }

    /**
     * Delete all selected Procedure at once.
     *
     * @param Request $request
     */
    public function massDestroy(Request $request)
    {
        if (! Gate::allows('procedure_delete')) {
            return abort(401);
        }
        if ($request->input('ids')) {
            $entries = Procedure::whereIn('id', $request->input('ids'))->get();

            foreach ($entries as $entry) {
                $entry->delete();
            }
        }
    }

}

<?php

namespace App\Http\Controllers\Admin;

use App\Appointment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreAppointmentsRequest;
use App\Http\Requests\Admin\UpdateAppointmentsRequest;
use Carbon\Carbon;

class AppointmentsController extends Controller
{
    /**
     * Display a listing of Appointment.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (! Gate::allows('appointment_access')) {
            return abort(401);
        }


                $appointments = Appointment::orderBy('start_time')->get();

        return view('admin.appointments.index', compact('appointments'));
    }

    /**
     * Show the form for creating new Appointment.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (! Gate::allows('appointment_create')) {
            return abort(401);
        }

        $clients = \App\Client::get()->pluck('first_name', 'id')->prepend(trans('quickadmin.qa_please_select'), '');
        $procedures = \App\Procedure::get()->pluck('name', 'id')->prepend(trans('quickadmin.qa_please_select'), '');

        return view('admin.appointments.create', compact('clients', 'procedures'));
    }

    /**
     * Store a newly created Appointment in storage.
     *
     * @param  \App\Http\Requests\StoreAppointmentsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAppointmentsRequest $request)
    {
        if (! Gate::allows('appointment_create')) {
            return abort(401);
        }

        $startTime = Carbon::createFromFormat(config('app.date_format') . ' H:i:s', $request->start_time);

        $duration = \App\Procedure::where('id', $request->procedure_id)->value('duration');

        $hours = Carbon::createFromFormat('H:i:s', $duration)->format('H');
        $minutes = Carbon::createFromFormat('H:i:s', $duration)->format('i');

        $endTime = $startTime->addHours($hours)->addMinutes($minutes);

        $appointment = new Appointment;

        $appointment->client_id = $request->client_id;
        $appointment->start_time = $request->start_time;
        $appointment->procedure_id =  $request->procedure_id;
        $appointment->end_time = $endTime;
        $appointment->order_complete = $request->order_complete;
        $appointment->save();


        return redirect()->route('admin.appointments.index');
    }


    /**
     * Show the form for editing Appointment.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (! Gate::allows('appointment_edit')) {
            return abort(401);
        }

        $clients = \App\Client::get()->pluck('first_name', 'id')->prepend(trans('quickadmin.qa_please_select'), '');
        $procedures = \App\Procedure::get()->pluck('name', 'id')->prepend(trans('quickadmin.qa_please_select'), '');

        $appointment = Appointment::findOrFail($id);

        return view('admin.appointments.edit', compact('appointment', 'clients', 'procedures'));
    }

    /**
     * Update Appointment in storage.
     *
     * @param  \App\Http\Requests\UpdateAppointmentsRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAppointmentsRequest $request, $id)
    {
        if (! Gate::allows('appointment_edit')) {
            return abort(401);
        }

        $appointment = Appointment::findOrFail($id);

        $startTime = Carbon::createFromFormat(config('app.date_format') . ' H:i:s', $request->start_time);

        $duration = \App\Procedure::where('id', $request->procedure_id)->value('duration');

        $hours = Carbon::createFromFormat('H:i:s', $duration)->format('H');
        $minutes = Carbon::createFromFormat('H:i:s', $duration)->format('i');

        $endTime = $startTime->addHours($hours)->addMinutes($minutes);

        $appointment->client_id = $request->client_id;
        $appointment->start_time = $request->start_time;
        $appointment->procedure_id =  $request->procedure_id;
        $appointment->end_time = $endTime;
        $appointment->order_complete = $request->order_complete;
        $appointment->save();

        return redirect()->route('admin.appointments.index');
    }


    /**
     * Display Appointment.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (! Gate::allows('appointment_view')) {
            return abort(401);
        }
        $appointment = Appointment::findOrFail($id);

        return view('admin.appointments.show', compact('appointment'));
    }


    /**
     * Remove Appointment from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (! Gate::allows('appointment_delete')) {
            return abort(401);
        }
        $appointment = Appointment::findOrFail($id);
        $appointment->delete();

        return redirect()->route('admin.appointments.index');
    }

    /**
     * Delete all selected Appointment at once.
     *
     * @param Request $request
     */
    public function massDestroy(Request $request)
    {
        if (! Gate::allows('appointment_delete')) {
            return abort(401);
        }
        if ($request->input('ids')) {
            $entries = Appointment::whereIn('id', $request->input('ids'))->get();

            foreach ($entries as $entry) {
                $entry->delete();
            }
        }
    }

}

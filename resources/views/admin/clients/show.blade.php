@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('quickadmin.clients.title')</h3>

    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('quickadmin.qa_view')
        </div>

        <div class="panel-body table-responsive">
            <div class="row">
                <div class="col-md-6">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>@lang('quickadmin.clients.fields.first-name')</th>
                            <td field-key='first_name'>{{ $client->first_name }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.clients.fields.last-name')</th>
                            <td field-key='last_name'>{{ $client->last_name }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.clients.fields.phone')</th>
                            <td field-key='phone'>{{ $client->phone }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.clients.fields.date-of-birth')</th>
                            <td field-key='date_of_birth'>{{ $client->date_of_birth }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.clients.fields.address')</th>
                            <td field-key='address'>{{ $client->address }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.clients.fields.city')</th>
                            <td field-key='city'>{{ $client->city }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.clients.fields.email')</th>
                            <td field-key='email'>{{ $client->email }}</td>
                        </tr>
                    </table>
                </div>
            </div><!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">

<li role="presentation" class="active"><a href="#appointments" aria-controls="appointments" role="tab" data-toggle="tab">Appointments</a></li>
</ul>

<!-- Tab panes -->
<div class="tab-content">

<div role="tabpanel" class="tab-pane active" id="appointments">
<table class="table table-bordered table-striped {{ count($appointments) > 0 ? 'datatable' : '' }}">
    <thead>
        <tr>
            <th>@lang('quickadmin.appointments.fields.client')</th>
                        <th>@lang('quickadmin.clients.fields.last-name')</th>
                        <th>@lang('quickadmin.clients.fields.phone')</th>
                        <th>@lang('quickadmin.clients.fields.email')</th>
                        <th>@lang('quickadmin.appointments.fields.procedure')</th>
                        <th>@lang('quickadmin.procedures.fields.price')</th>
                        <th>@lang('quickadmin.procedures.fields.duration')</th>
                        <th>@lang('quickadmin.appointments.fields.start-time')</th>
                        <th>@lang('quickadmin.appointments.fields.end-time')</th>
                        <th>@lang('quickadmin.appointments.fields.order-complete')</th>
                        <th>Action</th>

        </tr>
    </thead>

    <tbody>
        @if (count($appointments) > 0)
            @foreach ($appointments as $appointment)
                <tr data-entry-id="{{ $appointment->id }}">
                    <td field-key='client'>{{ $appointment->client->first_name or '' }}</td>
                    <td field-key='client'>{{ $appointment->client->last_name or '' }}</td>
                    <td field-key='client'>{{ $appointment->client->phone or '' }}</td>
                    <td field-key='client'>{{ $appointment->client->email or '' }}</td>
                    <td field-key='procedure'>{{ $appointment->procedure->name or '' }}</td>
                    <td field-key='procedure'>{{ number_format($appointment->procedure->price, 2). ' kn' }}</td>
                    <td field-key='procedure'>{{ $appointment->procedure->duration or '' }}</td>
                    <td field-key='start_time'>{{ $appointment->start_time }}</td>
                    <td field-key='end_time'>{{ $appointment->end_time }}</td>
                    <td field-key='order_complete'>{{ Form::checkbox("order_complete", 1, $appointment->order_complete == 1 ? true : false, ["disabled"]) }}</td>
                                                    <td>
                        @can('appointment_view')
                        <a href="{{ route('admin.appointments.show',[$appointment->id]) }}" class="btn btn-xs btn-primary">@lang('quickadmin.qa_view')</a>
                        @endcan
                        @can('appointment_edit')
                        <a href="{{ route('admin.appointments.edit',[$appointment->id]) }}" class="btn btn-xs btn-info">@lang('quickadmin.qa_edit')</a>
                        @endcan
                        @can('appointment_delete')
                        {!! Form::open(array(
                            'style' => 'display: inline-block;',
                            'method' => 'DELETE',
                            'onsubmit' => "return confirm('".trans("quickadmin.qa_are_you_sure")."');",
                            'route' => ['admin.appointments.destroy', $appointment->id])) !!}
                        {!! Form::submit(trans('quickadmin.qa_delete'), array('class' => 'btn btn-xs btn-danger')) !!}
                        {!! Form::close() !!}
                        @endcan
                    </td>

                </tr>
            @endforeach
        @else
            <tr>
                <td colspan="9">@lang('quickadmin.qa_no_entries_in_table')</td>
            </tr>
        @endif
    </tbody>
</table>
</div>
</div>

            <p>&nbsp;</p>

            <a href="{{ route('admin.clients.index') }}" class="btn btn-default">@lang('quickadmin.qa_back_to_list')</a>
        </div>
    </div>
@stop

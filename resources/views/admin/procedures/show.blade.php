@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('quickadmin.procedures.title')</h3>

    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('quickadmin.qa_view')
        </div>

        <div class="panel-body table-responsive">
            <div class="row">
                <div class="col-md-6">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>@lang('quickadmin.procedures.fields.code')</th>
                            <td field-key='code'>{{ $procedure->code }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.procedures.fields.name')</th>
                            <td field-key='name'>{{ $procedure->name }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.procedures.fields.price')</th>
                            <td field-key='price'>{{ $procedure->price }}</td>
                        </tr>
                        <tr>
                            <th>@lang('quickadmin.procedures.fields.duration')</th>
                            <td field-key='duration'>{{ $procedure->duration }}</td>
                        </tr>
                        <?php
                            $accomplished = $not_accomplished = $total_gain = $left_to_collect = 0;
                            foreach ($appointments as $appointment) {
                                if ($appointment->order_complete) {
                                    $accomplished++;
                                    $total_gain += $appointment->procedure->price;
                                }else {
                                    $not_accomplished++;
                                    $left_to_collect += $appointment->procedure->price;
                                }
                            }
                         ?>
                        <tr>
                            <th>Accomplished</th>
                            <td>{{ $accomplished }}</td>
                        </tr>
                        <tr>
                            <th>Unaccomplished</th>
                            <td>{{ $not_accomplished }}</td>
                        </tr>
                        <tr>
                            <th>Total gain</th>
                            <td>{{ number_format($total_gain, 2). ' kn' }}</td>
                        </tr>
                        <tr>
                            <th>Left to collect</th>
                            <td>{{ number_format($left_to_collect, 2). ' kn' }}</td>
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
                    <tr data-entry-id="{{ $appointment->id }}" style="{{ $appointment->order_complete ? print 'background:rgba(0,255,0,0.3);' : print 'background:rgba(255,0,0,0.3);' }}">
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

            <a href="{{ route('admin.procedures.index') }}" class="btn btn-default">@lang('quickadmin.qa_back_to_list')</a>
        </div>
    </div>
@stop

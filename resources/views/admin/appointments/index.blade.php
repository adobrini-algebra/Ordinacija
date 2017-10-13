@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('quickadmin.appointments.title')</h3>
    @can('appointment_create')
    <p>
        <a href="{{ route('admin.appointments.create') }}" class="btn btn-success">@lang('quickadmin.qa_add_new')</a>

    </p>
    @endcan



    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('quickadmin.qa_list')
        </div>

        <div class="panel-body table-responsive">
            <table class="table table-bordered table-striped {{ count($appointments) > 0 ? 'datatable' : '' }} @can('appointment_delete') dt-select @endcan">
                <thead>
                    <tr>
                        @can('appointment_delete')
                            <th style="text-align:center;"><input type="checkbox" id="select-all" /></th>
                        @endcan

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
                                @can('appointment_delete')
                                    <td></td>
                                @endcan

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
@stop

@section('javascript')
    <script>
        @can('appointment_delete')
            window.route_mass_crud_entries_destroy = '{{ route('admin.appointments.mass_destroy') }}';
        @endcan

    </script>
@endsection

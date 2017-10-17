@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('quickadmin.working-hours.title')</h3>
    @can('working_hour_create')
    <p>
        <a href="{{ route('admin.working_hours.create') }}" class="btn btn-success">@lang('quickadmin.qa_add_new')</a>

    </p>
    @endcan



    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('quickadmin.qa_list')
        </div>

        <div class="panel-body table-responsive">
            <table class="table table-bordered table-striped {{ count($working_hours) > 0 ? 'datatable' : '' }} @can('working_hour_delete') dt-select @endcan">
                <thead>
                    <tr>
                        @can('working_hour_delete')
                            <th style="text-align:center;"><input type="checkbox" id="select-all" /></th>
                        @endcan

                        <th>@lang('quickadmin.working-hours.fields.start-time')</th>
                        <th>@lang('quickadmin.working-hours.fields.end-time')</th>
                        <th>Current working Hours</th>
                        <th>Action</th>

                    </tr>
                </thead>

                <tbody>
                    @if (count($working_hours) > 0)
                        @foreach ($working_hours as $working_hour)
                            <tr data-entry-id="{{ $working_hour->id }}" style="{{ $working_hour->selected_time ? print 'background:rgba(0,255,0,0.3);' : print 'background:rgba(255,0,0,0.3);' }}">
                                @can('working_hour_delete')
                                    <td></td>
                                @endcan

                                <td field-key='start_time'>{{ $working_hour->start_time }}</td>
                                <td field-key='end_time'>{{ $working_hour->end_time }}</td>
                                <td field-key='selected_time'>{{ Form::checkbox("selected_time", 1, $working_hour->selected_time == 1 ? true : false, ["disabled"]) }}</td>
                                <td>
                                    @can('working_hour_view')
                                    <a href="{{ route('admin.working_hours.show',[$working_hour->id]) }}" class="btn btn-xs btn-primary">@lang('quickadmin.qa_view')</a>
                                    @endcan
                                    @can('working_hour_edit')
                                    <a href="{{ route('admin.working_hours.edit',[$working_hour->id]) }}" class="btn btn-xs btn-info">@lang('quickadmin.qa_edit')</a>
                                    @endcan
                                    @can('working_hour_delete')
                                    {!! Form::open(array(
                                        'style' => 'display: inline-block;',
                                        'method' => 'DELETE',
                                        'onsubmit' => "return confirm('".trans("quickadmin.qa_are_you_sure")."');",
                                        'route' => ['admin.working_hours.destroy', $working_hour->id])) !!}
                                    {!! Form::submit(trans('quickadmin.qa_delete'), array('class' => 'btn btn-xs btn-danger')) !!}
                                    {!! Form::close() !!}
                                    @endcan
                                </td>
                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td colspan="7">@lang('quickadmin.qa_no_entries_in_table')</td>
                        </tr>
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('javascript')
    <script>
        @can('working_hour_delete')
            window.route_mass_crud_entries_destroy = '{{ route('admin.working_hours.mass_destroy') }}';
        @endcan

    </script>
@endsection

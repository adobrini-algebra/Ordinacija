@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('quickadmin.procedures.title')</h3>
    @can('procedure_create')
    <p>
        <a href="{{ route('admin.procedures.create') }}" class="btn btn-success">@lang('quickadmin.qa_add_new')</a>

    </p>
    @endcan



    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('quickadmin.qa_list')
        </div>

        <div class="panel-body table-responsive">
            <table class="table table-bordered table-striped {{ count($procedures) > 0 ? 'datatable' : '' }} @can('procedure_delete') dt-select @endcan">
                <thead>
                    <tr>
                        @can('procedure_delete')
                            <th style="text-align:center;"><input type="checkbox" id="select-all" /></th>
                        @endcan

                        <th>@lang('quickadmin.procedures.fields.code')</th>
                        <th>@lang('quickadmin.procedures.fields.name')</th>
                        <th>@lang('quickadmin.procedures.fields.price')</th>
                        <th>@lang('quickadmin.procedures.fields.duration')</th>
                        <th>Action</th>

                    </tr>
                </thead>

                <tbody>
                    @if (count($procedures) > 0)
                        @foreach ($procedures as $procedure)
                            <tr data-entry-id="{{ $procedure->id }}">
                                @can('procedure_delete')
                                    <td></td>
                                @endcan

                                <td field-key='code'>{{ $procedure->code }}</td>
                                <td field-key='name'>{{ $procedure->name }}</td>
                                <td field-key='price'>{{ number_format($procedure->price, 2). ' kn' }}</td>
                                <td field-key='duration'>{{ $procedure->duration }}</td>
                                                                <td>
                                    @can('procedure_view')
                                    <a href="{{ route('admin.procedures.show',[$procedure->id]) }}" class="btn btn-xs btn-primary">@lang('quickadmin.qa_view')</a>
                                    @endcan
                                    @can('procedure_edit')
                                    <a href="{{ route('admin.procedures.edit',[$procedure->id]) }}" class="btn btn-xs btn-info">@lang('quickadmin.qa_edit')</a>
                                    @endcan
                                    @can('procedure_delete')
                                    {!! Form::open(array(
                                        'style' => 'display: inline-block;',
                                        'method' => 'DELETE',
                                        'onsubmit' => "return confirm('".trans("quickadmin.qa_are_you_sure")."');",
                                        'route' => ['admin.procedures.destroy', $procedure->id])) !!}
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
        @can('procedure_delete')
            window.route_mass_crud_entries_destroy = '{{ route('admin.procedures.mass_destroy') }}';
        @endcan

    </script>
@endsection

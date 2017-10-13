@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('quickadmin.appointments.title')</h3>
    @can('appointment_create')

        <a href="{{ route('admin.appointments.create') }}" class="btn btn-primary">Add new appointment</a>
        <div style="float: right;">
            <div class="btn btn-success">Appointments completed</div>
            <div class="btn btn-danger">Not completed</div>
        </div>

    @endcan

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.6.1/fullcalendar.min.css">

    <div id="calendar"></div>

@stop

@section('javascript')

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.6.1/fullcalendar.min.js"></script>

    <script>
        $(document).ready(function(){

        //    $("#calendar").fullCalendar('refetchEvents');
        //    $("#calendar").fullCalendar( 'rerenderEvents' );
            $("#calendar").fullCalendar({

                defaultView: 'agendaWeek',
                slotLabelFormat: 'H:mm',
                allDaySlot: false,
                minTime: "07:00",
                maxTime: "18:00",
                height: 'auto',
                weekends: false,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                businessHours: {
                    dow: [ 1, 2, 3, 4, 5 ],
                    start: '8:00',
                    end: '16:00',
                },
                events: [
                    @foreach ($appointments as $appointment)
                        {
                            title : '{{ $appointment->client->first_name . ' ' . $appointment->client->last_name }}',
                            start : '{{ $appointment->start_time }}',
                            end : '{{ $appointment->end_time }}',
                            url : '{{ route('admin.appointments.edit', $appointment->id) }}',
                            backgroundColor: '{{ !(\App\Appointment::where('id', $appointment->id)->value('order_complete')) ? 'red' : 'green' }}'
                        },
                    @endforeach
                ]
            })
        });
    </script>

@endsection

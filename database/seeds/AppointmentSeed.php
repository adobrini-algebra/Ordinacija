<?php

use Illuminate\Database\Seeder;

class AppointmentSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [

            ['id' => 1, 'client_id' => 1, 'procedure_id' => 1, 'start_time' => '2017-10-13 10:30:00', 'end_time' => '2017-10-13 11:00:00', 'order_complete' => 0,],

        ];

        foreach ($items as $item) {
            \App\Appointment::create($item);
        }
    }
}

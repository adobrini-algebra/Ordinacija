<?php

use Illuminate\Database\Seeder;

class WorkingHourSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            
            ['id' => 1, 'start_time' => '08:00:00', 'end_time' => '16:00:00',],

        ];

        foreach ($items as $item) {
            \App\WorkingHour::create($item);
        }
    }
}

<?php

use Illuminate\Database\Seeder;

class ProcedureSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            
            ['id' => 1, 'code' => '0001', 'name' => 'Brušenje zuba', 'price' => 50, 'duration' => '00:30:00',],

        ];

        foreach ($items as $item) {
            \App\Procedure::create($item);
        }
    }
}

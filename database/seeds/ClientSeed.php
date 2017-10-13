<?php

use Illuminate\Database\Seeder;

class ClientSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            
            ['id' => 1, 'first_name' => 'Marko', 'last_name' => 'Markić', 'phone' => '0918598789', 'date_of_birth' => '1984-11-14', 'address' => 'Markićeva ulica 16', 'city' => 'Zagreb', 'email' => 'marko@markic.com',],

        ];

        foreach ($items as $item) {
            \App\Client::create($item);
        }
    }
}

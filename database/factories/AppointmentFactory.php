<?php

$factory->define(App\Appointment::class, function (Faker\Generator $faker) {
    return [
        "client_id" => factory('App\Client')->create(),
        "procedure_id" => factory('App\Procedure')->create(),
        "start_time" => $faker->date("Y-m-d H:i:s", $max = 'now'),
        "end_time" => $faker->date("Y-m-d H:i:s", $max = 'now'),
        "order_complete" => 0,
    ];
});

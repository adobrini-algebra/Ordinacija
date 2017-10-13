<?php

$factory->define(App\WorkingHour::class, function (Faker\Generator $faker) {
    return [
        "start_time" => $faker->date("H:i:s", $max = 'now'),
        "end_time" => $faker->date("H:i:s", $max = 'now'),
    ];
});

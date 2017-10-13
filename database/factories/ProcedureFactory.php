<?php

$factory->define(App\Procedure::class, function (Faker\Generator $faker) {
    return [
        "code" => $faker->name,
        "name" => $faker->name,
        "price" => $faker->randomFloat(2, 1, 100),
        "duration" => $faker->date("H:i:s", $max = 'now'),
    ];
});

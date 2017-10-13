<?php

$factory->define(App\Client::class, function (Faker\Generator $faker) {
    return [
        "first_name" => $faker->name,
        "last_name" => $faker->name,
        "phone" => $faker->name,
        "date_of_birth" => $faker->date("Y-m-d", $max = 'now'),
        "address" => $faker->name,
        "city" => $faker->name,
        "email" => $faker->safeEmail,
    ];
});

<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->query(
"SELECT bookings.id, movies.title, schedule.date_time, cinema.name, cinema.city, prices.name, prices.price 
FROM movies, schedule, cinema, prices, bookings 
WHERE movies.id = schedule.film_id");
$statement->execute();
$response = $statement->fetchAll(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );
<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->query(
"SELECT bookings.id, movies.title, 
cinema.name, cinema.city, prices.name, prices.price, booked_seats.seatnumber, schedule.date_time
FROM movies, schedule, cinema, prices, bookings, booked_seats 
WHERE movies.id = schedule.film_id AND prices.id = booked_seats.price_id 
AND bookings.schedulebooking_id = schedule.id");
$statement->execute();
$response = $statement->fetchAll(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );

//AND bookings.schedulebookings_id = schedule.id
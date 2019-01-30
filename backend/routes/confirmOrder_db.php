<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->query(
"SELECT bookings.id, movies.title, cinema.name, cinema.city, prices.name, prices.price,
 booked_seats.seatnumber, booked_seats.rownumber, schedule.date_time, schedule.salon_id
FROM movies, schedule, cinema, prices, bookings, booked_seats 
WHERE movies.id = schedule.film_id 
AND prices.id = booked_seats.price_id 
AND bookings.schedulebooking_id = schedule.id 
AND booked_seats.bookings_id = bookings.id");
$statement->execute();
$response = $statement->fetchAll(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );

//AND bookings.schedulebookings_id = schedule.id
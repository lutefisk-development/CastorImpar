<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->query("SELECT members.id, bookings.user_id, bookings.schedulebooking_id, movies.title, schedule.date_time
From members, bookings, movies, schedule WHERE members.id = bookings.user_id and schedule.id = bookings.schedulebooking_id and movies.id = schedule.film_id");
$statement->execute();
$response = $statement->fetchAll(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );
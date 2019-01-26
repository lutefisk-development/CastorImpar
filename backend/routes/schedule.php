<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->query("SELECT schedule.id, title, date_time FROM schedule, movies WHERE film_id=movies.id ORDER BY date_time");
$statement->execute();
$response = $statement->fetchAll(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );
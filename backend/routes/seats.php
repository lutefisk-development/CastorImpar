<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->query("SELECT * FROM bookings, salon_row, schedule 
WHERE bookings.schedulebooking_id = schedule.id
AND schedule.salon_id = salon_row.salon_id 
ORDER BY bookings.id");
$statement->execute();
$response = $statement->fetchAll(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );
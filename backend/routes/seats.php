<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->query("SELECT * FROM salon_row");
$statement->execute();
$response = $statement->fetchAll(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );
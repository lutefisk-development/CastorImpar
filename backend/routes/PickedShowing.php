<?php
//header('Access-Control-Allow-Origin: *'); 
include('../boot.php');
//include('../db-connection.php');
 
// hämta från vue
if($request['schemaID']){
 
  // lägg till databasen
  $statement = $db->prepare("INSERT INTO bookings SET schedulebooking_id = :schedulebooking_id");
  try{
    $result = $statement->execute(array(
        'schedulebooking_id' => $request['schemaID']
    ));
  }catch(PDOException $e) {
    $result = $e;
  }
  
}
 
 
// skicka svar till klienten
echo( json_encode($result) );
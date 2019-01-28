<?php
//header('Access-Control-Allow-Origin: *'); 
include('../boot.php');
include('../db-connection.php');
 
// hämta från vue
if($request['schedulebooking_input']){
 
  // lägg till databasen
  $statement = $db->prepare("INSERT INTO bookings(schedulebooking_id) VALUES(:schedulebooking_input)");
  try{
    $result = $statement->execute(array(
        'schedulebooking_id' => $request['schedulebooking_input']
    ));
  }catch(PDOException $e) {
    $result = $e;
  }
  
}
 
 
// skicka svar till klienten
echo( json_encode($result) );
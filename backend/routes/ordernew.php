<?php
//header('Access-Control-Allow-Origin: *'); 
include('../boot.php');
//include('../db-connection.php');
 
// hämta från vue
if($request['schemaID']){
 
  // lägg till databasen
  $statement = $db->prepare("INSERT INTO booked_seats SET price_id = :id");
  try{
    $result = $statement->execute(array(
        'price_id' => $request['id']
    ));
  }catch(PDOException $e) {
    $result = $e;
  }
  
}
 
 
// skicka svar till klienten
echo( json_encode($result) );
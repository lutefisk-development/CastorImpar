<?php
include('../boot.php');
 
// Lägg beställning
if($request['salon'] && $request['seat']){
 
  // lägg till en beställning
  $statement = $db->prepare("INSERT INTO booked_seats SET salon_id = :salon_id, seatnumber = :seatnumber");
  try{
    $result = $statement->execute(array(
      'salon_id' => $request['salon'],  
      'seatnumber' => $request['seat'],
      
    ));
  }catch(PDOException $e) {
    $result = $e;
  }
 
}
 
// skicka svar till klienten
echo( json_encode($result) );
<?php
include('../boot.php');
 
// Lägg beställning
if($request['toDatabaseSalon'] && $request['toDatabaseSeat'] && $request['toDatabaseRow'] && $request['toDatabaseId'] && $request['toDatabasePrice']){
 
  // lägg till en beställning
  $statement = $db->prepare("INSERT INTO booked_seats SET salon_id = :salon_id, seatnumber = :seatnumber, row_nr = :row_nr, bookings_id = :bookings_id, price_id = :price_id");
  try{
    $result = $statement->execute(array(
      'salon_id' => $request['toDatabaseSalon'],  
      'seatnumber' => $request['toDatabaseSeat'],
      'row_nr' => $request['toDatabaseRow'],
      'bookings_id' => $request['toDatabaseId'],
      'price_id' => $request['toDatabasePrice']
      
    ));
  }catch(PDOException $e) {
    $result = $e;
  }
 
}
 
// skicka svar till klienten
echo( json_encode($result) );
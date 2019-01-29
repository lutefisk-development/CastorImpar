<?php
include('../boot.php');
 
// default svar
$response = ['loggedIn' => false];
 
// Vi hämtar den användare som finns sparad i session:
if($_SESSION['user']){
  $response = $_SESSION['user'];
  // (skicka aldrig lösenord till klienten)
  unset($response['password']);
}
 
// skicka svar till klienten
echo( json_encode($response) );
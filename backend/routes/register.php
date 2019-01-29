<?php
include('../boot.php');
 
// vi skapar bara en ny användare om det verkligen har skickats en.
if($request['email'] && $request['password']){
 
  // encrypt user password
  $request['password'] = password_hash($request['password'], PASSWORD_DEFAULT);
 
  // create a user
  $statement = $db->prepare("INSERT INTO members SET firstname = :firstname, lastname = :lastname, email = :email, password = :password, phone = :phone");
  try{
    $result = $statement->execute(array(
        'firstname' => $request['firstname'],
        'lastname' => $request['lastname'],
        'email' => $request['email'],
        'phone' => $request['phone'],
        'password' => $request['password']
    ));
  }catch(PDOException $e) {
    $result = $e;
  }
 
}
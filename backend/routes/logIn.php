<?php
include('../boot.php');
 
// default svar
$response = ['loggedIn' => false];
 
// Vi får ett inloggningsförsök
if($request['email']){
  // hämta användaren med detta email i databasen
  $statement = $db->prepare("SELECT * FROM members WHERE email = :email LIMIT 1");
  $statement->execute(array(
    'email' => $request['email']
  ));
  $result = $statement->fetch(PDO::FETCH_ASSOC);
  // jämför lösenorden
  if(password_verify($request['password'], $result['Password'])){
    // de stämmer, spara användaren i session
    $_SESSION['user'] = $result;
    // sätt inloggat svar
    $response['loggedIn'] = true;
    $response['user'] = $result;
    header('Content-type: application/json');
    echo json_encode($response);
  }
}

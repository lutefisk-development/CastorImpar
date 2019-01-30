
<?php
include('../boot.php');

/*
    Om array-nyckel email och array-nyckel password finns går vi vidare
*/
if ( $request['email'] && $request['password'] )
{
 
  /*
      Ersätt array-värdet password med en hashad version
  */
  $request['password'] = password_hash( $request['password'], PASSWORD_DEFAULT );
 
  /*
      Bygg upp PDO statement
  */
  $statement = $db->prepare( 
    " INSERT INTO members 
      SET firstname = :firstname, 
          lastname = :lastname, 
          email = :email, 
          password = :password, 
          phone = :phone"
  );


  try{
    $result = $statement->execute(
      array(
        'firstname' =>  $request['firstname'],
        'lastname'  =>  $request['lastname'],
        'email'     =>  $request['email'],
        'password'  =>  $request['password'],
        'phone'     =>  $request['phone']
      )
    );
  }catch(PDOException $e) {
    $result = $e;
  }
 
}
 
// skicka svar till klienten
echo( json_encode($result) );
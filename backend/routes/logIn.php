<?php
   include("db-connection.php");
   session_start();

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // email och password från form

      $email = mysqli_real_escape_string($db,$_POST['email']);
      $password = mysqli_real_escape_string($db,$_POST['password']);

      $sql = "SELECT id FROM members WHERE email = '$email' and passcode = '$password'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];

      $count = mysqli_num_rows($result);

      // Om email + password är en matchning, sätt table row till 1

      if($count == 1) {
         session_register("email");
         $_SESSION['login_user'] = $email;

         header("location: MyPages.php");
      }else {
         $error = "Din email eller lösenord är inte korrekt";
      }
   }
?>

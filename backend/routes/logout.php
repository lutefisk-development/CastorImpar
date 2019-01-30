<?php
include('../boot.php');
 
// rensa session (logga ut)
session_destroy();
 
// skicka svar till klienten
echo( json_encode(['loggedIn' => false]) );

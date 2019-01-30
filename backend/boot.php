<?php

// tillåt cross origin requests
include('cors.php');

// startar ny eller fortsätter session
session_start();
error_reporting( E_ALL );
// Sätt en header som anger att svaret (response body) kommer att vara JSON:
header('Content-type: application/json; charset=UTF-8');

// Hämta ut frågan från klienten (när request body är JSON):
$request = json_decode(file_get_contents('php://input'), JSON_OBJECT_AS_ARRAY);

// SPECIAL for debugging only
// =========================================================
// if(!empty($_GET['email']) && !empty($_GET['password'])){
//   $request['email'] = $_GET['email'];
//   $request['password'] = $_GET['password'];
// }
// =========================================================

// inkludera databasanslutningen
include('db-connection.php');

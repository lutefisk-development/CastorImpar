<?php
// Anslut till databas
// PDO kräver felhantering med try-catch vid anslutning.
try{

  // anslut
  $db = new PDO('mysql:host=127.0.0.1;dbname=castorimpar', 'root', '');

  // set errormode (här kan vi välja annan felhantering om vi vill)
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // PDO::ERRMODE_WARNING

  // vi ser till att vi MySQL använder UTF-8 vid läsning av queries
  $db->exec("SET CHARACTER SET utf8");
  

// om något går fel i anslutningen
}catch(PDOException $e) {
  // fångar vi felet här, och kan skriva ut info om vi vill
  echo $e->getMessage();
  exit();
}
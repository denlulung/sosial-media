<?php

$db_host = "db-aris-bigproject.ca0sqavdbb3h.ap-southeast-1.rds.amazonaws.com";
$db_user = "aris";
$db_pass = "1234567890";
$db_name = "sosialmedia";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}

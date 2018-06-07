<?php
session_start();
require 'conect.php';
if (isset($_POST['signup'])) {
    $username     = $_POST['username'];
    $password     = $_POST['password'];
    $created      = "1999-01-01 01:02:03";
    $name         = $_POST['name'];
    $address      = $_POST['address'];
    $phone        = $_POST['phone'];
    $email        = $_POST['email'];
    $notes        = 'false';
    $customerType = 'normal';
    $totalPaid    = floatval('0');  
}
     $query = "insert into customer( userName, password, name, address, phone, email, notes, customerType, totalPaid) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    $params  = [$username, $password, $name, $address, $phone, $email, $notes, $customerType,$totalPaid];
        
    $result = sqlsrv_query( $conn, $query,$params);
    if ($result) {
        //echo "insert thanh cong";
        require 'sign.php';
    }else{
        die(print_r(sqlsrv_errors(),true));
    }
?>

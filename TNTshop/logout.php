<?php 
session_start();
require 'conect.php';
$username = $_SESSION['username'];
$sql     = "exec manager_logout_account '$username'";
$params  = array();
$options = array("Scrollable" => SQLSRV_CURSOR_KEYSET);
$stmt    = sqlsrv_query($conn, $sql, $params, $options);

unset($_SESSION['username']);
header('location: index.php')
?>
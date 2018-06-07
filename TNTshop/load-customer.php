<?php
	require 'conect.php';

	$str 	= "select * from customer where email = '$email'";
	$params = array();
	$option = array("Scrollable" => SQLSRV_CURSOR_KEYSET);
	$rs 	= sqlsrv_query($conn, $str, $params, $option);
	$row 	= sqlsrv_fetch_array($rs);

	$id 				= $row[0];
	$username 			= $row[1];
	$password 			= $row[2];
	$created 			= $row[3];
	$name	 			= $row[4];
	$address			= $row[5];
	$phone				= $row[6];
	$email				= $row[7];
	$note				= $row[8];
	$customertype		= $row[9];
	$totalpaid			= $row[10];

?>
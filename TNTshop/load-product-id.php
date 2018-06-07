<?php
	require 'conect.php';

	$str 	= "select * from product where productID = '$prod_id'";
	$params = array();
	$option = array("Scrollable" => SQLSRV_CURSOR_KEYSET);
	$rs 	= sqlsrv_query($conn, $str, $params, $option);
	$row 	= sqlsrv_fetch_array($rs);

	$id 				= $row[0];
	$productCategoryID 	= $row[1];
	$name 				= $row[2];
	$description 		= $row[3];
	$inventory 			= $row[4];
	$isActive 			= $row[5];
	$unitPrice 			= $row[6];
	$size 				= $row[7];
	$image 				= $row[8];
?>
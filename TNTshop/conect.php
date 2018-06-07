<?php
	$serverName = "DESKTOP-8FEV4A4";
	//$connectionInfo = array("Database"=>"test", "UID"=>"sa", "PWD"=>"123");
	//$conn = sqlsrv_connect($serverName, $connectionInfo);

	$connectionInfo = array("Database"=>"DoanDBMS");
	$conn = sqlsrv_connect($serverName, $connectionInfo);

	/*if ($conn) {
		echo "Connection establiched. <br/>";
	} else{
		echo "Connection could not be established. <br/>";
		die(print_r(sqlsrv_errors(),true));
	}*/
?>
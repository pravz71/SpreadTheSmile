<?php
	session_start();
	include_once("db_connect.php");
	include_once("alert.php");
	//NGO Request
	if(isset($_POST['s_clothes']) && isset($_POST['l_clothes']) && isset($_POST['utensils']) && isset($_POST['stationeries']) && isset($_POST['blankets']))
	{
		$s_clothes = $_POST['s_clothes'];
		$l_clothes = $_POST['l_clothes'];
		$utensils = $_POST['utensils'];
		$stationeries = $_POST['stationeries'];
		$blankets = $_POST['blankets'];
	}
	$ngo_id = $_SESSION["id"];
	$sql_query = "SELECT * FROM `requests` WHERE  `ngo_id` = '$ngo_id'";
	$results = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
	$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
	$s_clothes += $row['s_clothes'];
	$l_clothes += $row['l_clothes'];
	$utensils += $row['utensils'];
	$stationeries += $row['stationeries'];
	$blankets += $row['blankets'];
	$req_date = date("Y/m/d");
	$sql_query = "UPDATE `requests` SET `s_clothes`='$s_clothes',`l_clothes`='$l_clothes',`utensils`='$utensils',`stationeries`='$stationeries',`blankets`='$blankets',`req_date`='$req_date' WHERE `ngo_id`= '$ngo_id'";
	$results = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
	mysqli_close($connection);
	if ($results) 
	{
		echo (generateAlert("ngo request successful"));
	}
	else
	{
		echo (generateAlert("ngo request unsuccessful"));
	}
?>
<?php 
	session_start();
	include_once("db_connect.php");
	include_once("alert.php");
	$volunteer_id = $_SESSION['id'];
	if(isset($_POST['order_id']))
	{
		$order_id = $_POST['order_id'];
	}
	$sql_query = "UPDATE `orders` SET `volunteer_id`= '$volunteer_id' WHERE `id` = '$order_id' AND `volunteer_id` IS NULL";
	$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	if($results)
	{
		echo (generateAlert("assign volunteer successful"));		
	}
	else
	{
		echo (generateAlert("assign volunteer unsuccessful"));
	}
?>
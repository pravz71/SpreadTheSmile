<?php 
	session_start();
	include_once("db_connect.php");
	include_once("alert.php");
	$volunteer_id = $_SESSION['id'];
	$results = false;
	if (isset($_POST['cancel']))
	{
		$order_id = $_POST['order_id'];
		$sql_query = "UPDATE `orders` SET `volunteer_id`= NULL WHERE `id`='$order_id'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	}
	elseif (isset($_POST['picked'])) 
	{
		$temp = 'YES';
		$order_id = $_POST['order_id'];
		$sql_query = "UPDATE `orders` SET `isPicked`= '$temp' WHERE `id`='$order_id'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	}
	elseif (isset($_POST['delivered'])) 
	{
		$temp = 'Y';
		$order_id = $_POST['order_id'];
		$sql_query = "UPDATE `orders` SET `isDelivered`= '$temp' WHERE `id`='$order_id'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	}
	if($results)
	{
		echo (generateAlert("update task successful"));		
	}
	else
	{
		echo (generateAlert("update task unsuccessful"));
	}

?>
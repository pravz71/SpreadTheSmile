<?php
	session_start();
	include_once("db_connect.php");

	// updating cart in database

	$id = $_SESSION["id"]; 
	$cdate = date("Y/m/d");
	$val = 'NO';
	$sql_query = "INSERT INTO `orders`(`id`, `contributor_id`, `volunteer_id`, `order_date`, `isPicked`, `isDelivered`) VALUES (NULL,'$id',NULL,'$cdate','$val','$val')";
	$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	$order_id = mysqli_insert_id($connection);
	$_SESSION['order_id'] = $order_id;
	$cart = $_SESSION['cart'];
	for($i = 0; $i < count($cart); $i++)
	{
		$item = $cart[$i][0];
		$quantity = $cart[$i][1];
		$ngo_id = $cart[$i][2];
		$item_name = $cart[$i][3];
		$sql_query = "SELECT * FROM `requests` WHERE `ngo_id`='$ngo_id'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		$data = mysqli_fetch_array($results,MYSQLI_ASSOC);
		$db_quantity = $data[$item_name];
		if($db_quantity<$quantity && $ngo_id != 1)
		{
			$w_quantity = $quantity - $db_quantity;
			$sql_query = "INSERT INTO `consignments`(`id`, `item`, `quantity`, `ngo_id`, `order_id`) VALUES (NULL,'$item','$w_quantity','1','$order_id')";	
			$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
			$quantity = $db_quantity;  
		}
		$sql_query = "INSERT INTO `consignments`(`id`, `item`, `quantity`, `ngo_id`, `order_id`) VALUES (NULL,'$item','$quantity','$ngo_id','$order_id')";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	}
	$_SESSION['cart'] = -1;
	
	//updating address in database

	if(isset($_POST['full_name']) && isset($_POST['mobile']) && isset($_POST['pincode']) && isset($_POST['flat_number']) && isset($_POST['street_address']) && isset($_POST['p_date']) && isset($_POST['p_time']))
	{
		$name = $_POST['full_name'];
		$mobile = $_POST['mobile'];
		$pincode = $_POST['pincode'];
		$flat_number = $_POST['flat_number'];
		$street = $_POST['street_address'];
		$p_date = $_POST['p_date'];
		$temp_time =($_POST['p_time']);
		if($temp_time == 1)
		{
			$p_time = "7 AM - 9 AM";
		}
		else if($temp_time == 2)
		{
			$p_time = "9 AM - 11 AM";
		}
		else if($temp_time == 3)
		{
			$p_time = "11 AM - 1 PM";
		}
		else if($temp_time == 4)
		{
			$p_time = "1 PM - 3 PM";
		}
		else if($temp_time == 5)
		{
			$p_time = "3 PM - 5 PM";
		}
		else if($temp_time == 6)
		{
			$p_time = "5 PM - 7 PM";
		}
		else if($temp_time == 7)
		{
			$p_time = "7 PM - 9 PM";
		}
	} 
	$sql_query  = "INSERT INTO `pickup`(`order_id`, `name`, `phone`, `pincode`, `flat`, `street`, `pickup_date`, `pickup_time`) VALUES ('$order_id','$name','$mobile','$pincode','$flat_number','$street','$p_date','$p_time')";
	$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	mysqli_close($connection); 
	header('Location: ../pickupconfirmation.php');
 ?>
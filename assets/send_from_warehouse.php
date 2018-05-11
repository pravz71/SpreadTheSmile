<?php
	session_start();
	include_once("db_connect.php");
	include_once("alert.php");
	//NGO Request
	if(isset($_POST['ngo_id']))
	{
		$ngo_id = $_POST["ngo_id"];

		//Retrieving Warehouse Stock

		$sql_query = "SELECT * FROM `requests` WHERE `ngo_id` = 1";
		$results = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
		$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
		$whitems = array(
						"s_clothes" => $row['s_clothes'],
						"l_clothes" => $row['l_clothes'],
						"utensils" => $row['utensils'],
						"stationeries" => $row['stationeries'],
						"blankets" => $row['blankets']
					);

		// Collecting Items to be sent and their quantity and subtracting them from warehouse stocks

		$cdate = date("Y/m/d");
		$val = 'NO';
		$items = array("s_clothes" => "Clothes(S)",
					"l_clothes" => "Clothes(L)",
					"utensils" => "Utensils",
					"stationeries" => "Stationeries",
					"blankets" => "Blankets"
				 );
		$sql_query = "INSERT INTO `orders`(`id`, `contributor_id`, `volunteer_id`, `order_date`, `isPicked`, `isDelivered`) VALUES (NULL,0,NULL,'$cdate','$val','$val')";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		$order_id = mysqli_insert_id($connection);

		$keys = array_keys($items);
		for($i = 0; $i < count($keys); $i++)
		{

			if(isset($_POST[$keys[$i]]) && ($_POST[$keys[$i]] > 0 ) && ($whitems[$keys[$i]] > 0))
			{
				echo "hi<br>";
				$quantity = min($_POST[$keys[$i]], $whitems[$keys[$i]]);
				$item_name = $items[$keys[$i]];
				$item = $keys[$i];
				$sql_query = "INSERT INTO `consignments`(`id`, `item`, `quantity`, `ngo_id`, `order_id`) VALUES (NULL,'$item_name','$quantity','$ngo_id','$order_id')";
				$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
				$quantity = $whitems[$keys[$i]] - $quantity; 
				$sql_query = "UPDATE `requests` SET `$item`= '$quantity' WHERE `ngo_id` = 1";
				$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
			}
		}

		// Creating Pickup Address
		if(isset($_POST['p_date']) && isset($_POST['p_time']))
		{
			$name = "Warehouse";
			$mobile = "9876543210";
			$pincode = "700102";
			$flat_number = "D-31, Vaishno Devi Abasan";
			$street = "Samarpally";
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
	}
	else
	{
		$results = false;
	}
	
	mysqli_close($connection);
	if ($results) 
	{
		echo (generateAlert("send from warehouse successful"));
	}
	else
	{
		echo (generateAlert("send from warehouse unsuccessful"));
	}
?>
<?php 
	session_start();
	include_once("db_connect.php");
	include_once("alert.php");
	$valid = false;
	if (isset($_POST['delivered'])) 
	{
		$order_id = $_POST['order_id'];
		$sql_query = "SELECT `isDelivered` FROM `orders` WHERE `id` = '$order_id' AND `isDelivered` != 'YES'";
		$results = mysqli_query($connection, $sql_query) or die ("Error: " . mysqli_error());
		if (mysqli_num_rows($results) > 0)
		{
			$sql_query = "UPDATE `orders` SET `isDelivered` = 'YES', `isPicked` = 'YES' WHERE `id` = '$order_id'";
			$results = mysqli_query($connection, $sql_query) or die ("Error: " . mysqli_error());
			$items = array("s_clothes" => "Clothes(S)",
							"l_clothes" => "Clothes(L)",
							"utensils" => "Utensils",
							"stationeries" => "Stationeries",
							"blankets" => "Blankets",
						 );
			$keys = array_keys($items);
			for($i = 0; $i < count($keys); $i++)
			{
				$user_item = $items[$keys[$i]];
				$sql_query = "SELECT `quantity`,`ngo_id` FROM `consignments` WHERE `order_id` = '$order_id' AND `item` = '$user_item'";
				$results = mysqli_query($connection, $sql_query) or die ("Error: " . mysqli_error());
				while($row = mysqli_fetch_array($results,MYSQLI_ASSOC))
				{

					$user_quantity = $row['quantity'];
					$ngo_id = $row['ngo_id'];
					$db_item = $keys[$i];
					if($user_quantity != "Others")
					{
						$sql_query = "SELECT `$db_item` FROM `requests` WHERE `ngo_id` = '$ngo_id'";
						$res = mysqli_query($connection, $sql_query) or die ("Error: " . mysqli_error());
						$data = mysqli_fetch_array($res,MYSQLI_ASSOC);
						$db_quantity = $data[$db_item];
						if ($ngo_id == 1) 
						{
							$db_quantity += $user_quantity; 	
						}
						else
						{
							if ($db_quantity > $user_quantity) 
							{
								$db_quantity -= $user_quantity;
							} 
							else 
							{
								$db_quantity = 0;
							}
							
						}
						$sql_query = "UPDATE `requests` SET `$db_item`= '$db_quantity' WHERE `ngo_id` = '$ngo_id'";
						$res = mysqli_query($connection, $sql_query) or die ("Error: " . mysqli_error());
					}
				}	
			}
			$valid = true;
		}	
	}
	mysqli_close($connection);
	if($valid)
	{
		echo (generateAlert("valid acknowledge delivery"));		
	}
	else
	{
		echo (generateAlert("invalid acknowledge delivery"));
	}
?>
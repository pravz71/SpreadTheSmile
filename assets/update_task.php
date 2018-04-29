<?php 
	session_start();
	include_once("db_connect.php");
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
		echo "<script>
				alert('Changes have been made successfully.');
				window.location = '../volunteertasks.php';
			 </script>";		
	}
	else
	{
		echo "<script>
				alert('Sorry something went wrong!');
				window.location = '../volunteertasks.php';
			 </script>";
	}

?>
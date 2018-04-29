<?php 
	session_start();
	include_once("db_connect.php");
	$results = false;
	if (isset($_POST['delivered'])) 
	{
		$order_id = $_POST['order_id'];
	}
	$sql_query = "UPDATE `orders` SET `isDelivered` = 'YES', `isPicked` = 'YES' WHERE `id` = '$order_id'";
	$results = mysqli_query($connection, $sql_query) or die ("Error: " . mysqli_error());
	if($results)
	{
		echo "<script>
				alert('Admin has been notified');
				window.location = '../upcomingdeliveries.php';
			 </script>";		
	}
	else
	{
		echo "<script>
				alert('Sorry something went wrong!');
				window.location = '../upcomingdeliveries.php';
			 </script>";
	}
?>
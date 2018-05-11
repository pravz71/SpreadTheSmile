<?php
	session_start();
	include_once("db_connect.php");
	include_once("alert.php");
	//user inputs 
	$username = $_POST["username"];
	$password = $_POST["password"];

	// Code to prevent MySql Injection



	//validating inputs with database credentials
	$sql_query = "SELECT * FROM `users` WHERE username = '$username' AND password = '$password' ";
	$results = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
	if (mysqli_num_rows($results) > 0) 
	{
		$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
		$_SESSION["username"] = $username;
		$_SESSION["role"] = $row["role"];
		
		// Path 

		if($_SESSION["role"] === "contributor"){
			$query = "SELECT * FROM `contributors` WHERE `username` = '$username'";
			$res = mysqli_query($connection,$query) or die ("Error : " . mysqli_error());
			$data = mysqli_fetch_array($res,MYSQLI_ASSOC);
			$_SESSION["id"] = $data["id"];
			header('Location: ../cart.php?login_success = 1');
		}	
		elseif($_SESSION["role"] === "volunteer")
		{
			$query = "SELECT * FROM `volunteers` WHERE `username` = '$username'";
			$res = mysqli_query($connection,$query) or die ("Error : " . mysqli_error());
			$data = mysqli_fetch_array($res,MYSQLI_ASSOC);
			$_SESSION["id"] = $data["id"];
			header('Location: ../unassignedvolunteer.php?login_success = 1');
		}	
		elseif($_SESSION["role"] === "ngo")
		{
			$query = "SELECT * FROM `ngos` WHERE `username` = '$username'";
			$res = mysqli_query($connection,$query) or die ("Error : " . mysqli_error());
			$data = mysqli_fetch_array($res,MYSQLI_ASSOC);
			$_SESSION["id"] = $data["id"];
			header('Location: ../ngorequest.php?login_success = 1');
		}
		else
		{
			$_SESSION["id"] = 0;
			header('Location: ../ngodetails.php?login_success = 1');
		}
	} 
	else 
	{
		mysqli_close($connection); 
		echo (generateAlert("invalid user"));
	}	
	mysqli_close($connection); 
 ?>
<?php 
	include_once("db_connect.php");
	include_once("alert.php");
	//code to prevent sql injection

	if(isset($_POST['email']) && isset($_POST['mobile']) && isset($_POST['password']) && isset($_POST['confirm_password']) && isset($_POST['security_question']) && isset($_POST['security_answer']))
	{
		$username = $_POST['email'];
		$mobile = $_POST['mobile'];
		$password = $_POST['password'];
		$security_question = $_POST['security_question'];
		$security_answer = $_POST['security_answer'];
	}
	$sql_query = "SELECT * FROM `users` WHERE username = '$username'" or die ("Error: " . mysqli_error());
	$results = mysqli_query($connection,$sql_query);
	if (mysqli_num_rows($results) === 0) 
	{
		if (isset($_POST['contributor'])) 
		{
	   		// contributor
	   		if(isset($_POST['full_name']) && isset($_POST['dob']))
	   		{
	   			$full_name = $_POST['full_name'];
	   			$dob = $_POST['dob'];
	   			$role = "contributor";
	   			$sql_query = "INSERT INTO `contributors`(`id`, `username`, `name`, `mobile`, `dob`, `password`, `squestion`, `sanswer`) VALUES  (NULL, '$username','$full_name','$mobile','$dob','$password','$security_question','$security_answer')";
	   		}
	    } 
	    elseif (isset($_POST['volunteer']))
	    {
	    	// volunteer
	    	if (isset($_POST['full_name']) && isset($_POST['dob']) && isset($_POST['volunteer_pic'])  && isset($_POST['address']))
	    	{
	    		$full_name = $_POST['full_name'];
	   			$dob = $_POST['dob'];
	   			$volunteer_pic = $_POST['volunteer_pic'];
	   			$address = $_POST['address'];
	   			$role = "volunteer";
	   			$sql_query = "INSERT INTO `volunteers`(`id`, `username`, `name`, `mobile`, `dob`, `password`, `squestion`, `sanswer`, `image`, `address`) VALUES (NULL, '$username','$full_name','$mobile','$dob','$password','$security_question','$security_answer','$volunteer_pic','$address')";
	    	}
	    }
	    else
	    {
	    	// ngo 
	    	if(isset($_POST['ngo_name']) && isset($_POST['district']) && isset($_POST['address']))
	    	{
	    		$ngo_name = $_POST['ngo_name'];
	   			$district = $_POST['district'];
	   			$address = $_POST['address'];
	   			$role = "ngo";
	   			$sql_query = "INSERT INTO `ngos`(`id`, `username`, `name`, `mobile`, `district`, `password`, `squestion`, `sanswer`, `address`) VALUES (NULL,'$username','$ngo_name','$mobile','$district','$password','$security_question','$security_answer','$address')";

	    	}
	    }
	    $results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
	    $ngo_id = mysqli_insert_id($connection); //retrieving the id of the inserted ngo
		$sql_query = "INSERT INTO `users`(`username`, `password`, `role`) VALUES ('$username','$password','$role')";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		if ($role === "ngo"){
			$qty = 0;
			$req_date = date("Y/m/d");
			$sql_query = "INSERT INTO `requests`(`ngo_id`, `ngo_name`, `s_clothes`, `l_clothes`, `utensils`, `stationeries`, `blankets`,`req_date`) VALUES ('$ngo_id','$ngo_name','$qty','$qty','$qty','$qty','$qty','$req_date')";
			$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		}
		mysqli_close($connection);
		if ($results) 
		{
			echo (generateAlert("account created"));
		}
		else
		{
			echo (generateAlert("account not created"));
		}
	} 
	else 
	{
		echo (generateAlert("email exists"));
	}	
?>
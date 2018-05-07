<?php 
	session_start(); 
	if(! isset($_SESSION["id"]))
	{
		header('Location: ../login.php');
	}
	else
	{
		if ($_SESSION["role"] === "contributor") 
		{
			header('Location: ../cart.php');
		} 
		elseif ($_SESSION["role"] === "volunteer") 
		{
			header('Location: ../unassignedvolunteer.php');
		}
		elseif ($_SESSION["role"] === "ngo")
		{
			header('Location: ../ngorequest.php');
		}
		else
		{
			header('Location: ../ngodetails.php');
		}
		
	}
?>
<?php  
	session_start();
	if (! isset($_SESSION["id"])) 
	{
		header('Location: login.php');
	}
	else if ($_SESSION["role"] != "contributor") 
	{
		header('Location: assets/user_manager.php');
	}
?>
<?php  
	session_start();
	if (! isset($_SESSION["id"])) 
	{
		header('Location: login.php');
	}
	else if ($_SESSION["role"] != "volunteer") 
	{
		header('Location: assets/user_manager.php');
	}
?>
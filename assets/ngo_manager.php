<?php  
	session_start();
	if (! isset($_SESSION["id"])) 
	{
		header('Location: login.html');
	}
	else if ($_SESSION["role"] != "ngo") 
	{
		header('Location: assets/user_manager.php');
	}
?>
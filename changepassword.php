<?php 
	session_start();
	include_once("assets/db_connect.php");
	if(isset($_SESSION['id']))
	{
		header('Location: assets/user_manager.php');
	}
	if(isset($_POST['email']))
	{
		$email = $_POST['email'];
		$sql_query = "SELECT * FROM `users` WHERE `username` = '$email'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		if(mysqli_num_rows($results) > 0)
		{
			$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
			$_SESSION['email'] = $row['username'];
			$_SESSION['role'] = $row['role'];
			if($row['role'] === "admin")
			{
				session_destroy();
				header('Location: assets/user_manager.php');
			}
			$table_name = $_SESSION['role'] . "s";
			$sql_query = "SELECT * FROM `$table_name` WHERE `username` = '$email'";
			$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
			$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
			$s_question = $row['squestion'];
			$_SESSION['s_answer'] = $row['sanswer'];
			$sql_query = "SELECT * FROM `security_question` WHERE `id` = '$s_question'";
			$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
			$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
			$s_question = "<h2>Your " . strtolower($row['question'] ). " ?</h2>";
			$_SESSION['s_question'] = $s_question;
			unset($_SESSION['incorrect']);
		}
		else
		{
			$_SESSION['incorrect'] = true;
		}
	}
	if(isset($_POST['answer']))
	{
		$user_answer = $_POST['answer'];
		$db_answer = $_SESSION['s_answer'];
		$email = $_SESSION['email'];
		if(strcasecmp($user_answer, $db_answer) == 0)
		{
			unset($_SESSION['incorrect']);
			$table_name = $_SESSION['role'] . "s";
			$_SESSION['user_answer'] = true;
		}
		else
		{
			$_SESSION['incorrect'] = true;
		}

 	}
 	if(isset($_POST['password']))
 	{
 		$email = $_SESSION['email'];
 		$password = $_POST['password'];
 		$sql_query = "UPDATE `volunteers` SET`password`= '$password' WHERE `username` = '$email'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		$sql_query = "UPDATE `users` SET`password`= '$password' WHERE `username` = '$email'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		if($results)
		{
			$_SESSION['password'] = true;
		}
 	}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Spread The Smile</title>
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="style.css">
		<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
		<script type="text/javascript" src="lib/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="lib/bootstrap/js/bootstrap.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
		<nav class="navbar navbar-default navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<a href="index.html" class="navbar-brand">SpreadTheSmile</a>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="#">Home</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login.php">Sign In<span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
						<li><a href="signup.php">Sign Up<span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<div class="change-password">
				<div class="content-box">
					<div class="content-title"><h3 class="pass-title">Change Password</h3></div>
					<div class="content-title-underline"></div>
				</div>
				<?php  
					if(!isset($_SESSION['email']))
					{
						echo "<div class='password-reset'>
									<form action='' method='POST'>
										<label for='email'>E-mail Id:</label>
										<input type='email' name='email' required=''>
										<button type='submit' value='emailb'>Submit</button>
									</form>
								</div>";
					}
					if(isset($_SESSION['incorrect']) && !isset($_SESSION['email']))
					{
						echo "<div class='password-error'>
									<h3>! Email-Id is not registered.</h3>
								</div>";
					}
					if(!isset($_SESSION['user_answer']) && isset($_SESSION['email']))
					{
						echo ($_SESSION['s_question']);
						echo "<div class='password-reset'>
								<form action='' method='POST'>
										<label for='answer'>Your Answer:</label>
										<input type='text' name='answer' required=''>
										<button type='submit' value='s_answer'>Submit</button>
									</form>
								</div>";
					}
					if (isset($_SESSION['incorrect']) && isset($_SESSION['email'])) 
					{
						echo "<div class='password-error'>
								<h3>! Answer did not match.</h3>
							</div>";
					}
					if (!isset($_SESSION['password']) && isset($_SESSION['user_answer'])) 
					{
						echo "<div class='password-reset new_pass'>
								<form action= '' onsubmit = 'validatePassword()' method='POST'>
									<label for='password'>New Password</label><br>
									<input type='password' name='password' required='' placeholder='Atleast 6 characters' minlength='6' onselectstart='return false' onpaste='return false;' onCopy='return false' onCut='return false' onDrag='return false' onDrop='return false' autocomplete=off><br>
									<label for='confirm_password'>Confirm Password</label><br>
									<input type='password' name='confirm_password' required='' placeholder='Atleast 6 characters' minlength='6' onselectstart='return false' onpaste='return false;' onCopy='return false' onCut='return false' onDrag='return false' onDrop='return false' autocomplete=off><br>
									<button type='submit' value='pass'>Change Password</button>
								</form>
							</div>";
					}
					if(isset($_SESSION['password']))
					{
						unset($_SESSION['password']);
						unset($_SESSION['user_answer']);
						unset($_SESSION['incorrect']);
						unset($_SESSION['email']);
						unset($_SESSION['s_answer']);
						echo "<div class='password-error'>
								<h3>Password Successfully Changed</h3>
							</div>";
					}

				?>
			</div>
		</div>
		<div id="push"></div>
		<footer>
	        <div class="container">
	            <p id="footer_data">
	                <strong>&#9400; Pro & Bros.</strong>  
	            	<a href="https://www.facebook.com/" target="_blank" style="margin-left: 25%;"><img src="img/facebook.png" class="logo"alt="Facebook" height="35" width="35"></a>
	            	<a href="https://twitter.com/" target="_blank"><img src="img/twitter.png" class="logo" alt="Twitter" height="35" width="35"></a>
	            	<a href="https://instagram.com/" target="_blank"><img src="img/instagram.png" class="logo" alt="Instagram" height="35" width="35"></a>  
	            </p>
	        </div>
	    </footer>
	    <script type="text/javascript" src="script.js"></script>
	</body>
</html>
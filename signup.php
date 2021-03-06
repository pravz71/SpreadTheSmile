<?php 
	session_start();
	if(isset($_SESSION['id']))
	{
		header('Location: assets/user_manager.php');
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
					</ul>
				</div>
			</div>
		</nav>
		<div class="container-fluid">
			<div id="sign_up">
				<div id="sign_up_options">
					<h1>Sign Up</h1>			
					<input type="radio" name="role" value="contributor" id="c" required=""><label for="c">Contributor</label>
					
					<input type="radio" name="role" value="volunteer" id="v" required=""><label for="v">Volunteer</label>
					
					<input type="radio" name="role" value="ngo" id="n" required=""><label for="n">NGO</label>
				</div>
				<div id="contributor_form" class="sign_up_form">
					<form action="assets/sign_up.php" onsubmit="return validateForm('contributor')" method="POST">
						<div class="input_wrap">
							<label for="fullname">Full Name</label>
							<input type="text" name="full_name" placeholder="Eg: Sandeep Kumar" required="">
						</div>
						<div class="input_wrap">
							<label for="email">E-mail </label>
							<input type="email" name="email" placeholder="Eg: sandy@gmail.com" required="">
						</div>
						<div class="input_wrap">
							<label for="mobile">Phone Number</label>
							<input type="tel" name="mobile" placeholder="Eg: 9876543210" required="" pattern= "^\d{10}$" maxlength="10">
						</div>
						<div class="input_wrap">
							<label for="dob">D.O.B.</label>
							<input type="date" name="dob" required="" max="2010-12-31" min="1910-01-01">
						</div>
						<div class="input_wrap">
							<label for="password">Choose Password</label>
							<input type="password" name="password" required="" placeholder="Atleast 6 characters" minlength="6" onselectstart="return false" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" autocomplete=off>
						</div>
						<div class="input_wrap">
							<label for="confirm_password">Confirm Password</label>
							<input type="password" name="confirm_password" required="" placeholder="Atleast 6 characters" minlength="6" onselectstart="return false" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" autocomplete=off>
						</div>
						<div class="input_wrap">
							<label for="security_question">Security Question</label>
							<select name="security_question" required="">
								<option value="-1" selected="true" disabled="disabled">--Select a Question--</option>
								<option value="1">Your Favourite Animal</option>
								<option value="2">Your Favourite cartoon character</option>
								<option value="3">Your Nickname</option>
								<option value="4">Your Birth City</option>
							</select>
						</div>
						<div class="input_wrap">
							<label for="security_answer">Your Answer</label>
							<input type="text" name="security_answer" required="">
						</div>
						<center>
							<button type="submit" name="contributor">SIGN UP <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></button>
							<br>
							<a href="login.php">Already Registered? <u>Sign In<u></a>
						</center>
					</form>
				</div>
				<div id="volunteer_form" class="sign_up_form">
					<form action="assets/sign_up.php" onsubmit="return validateForm('volunteer')" method="POST">
						<div class="input_wrap">
							<label for="fullname">Full Name</label>
							<input type="text" name="full_name" placeholder="Eg: Rishabh Jain" required="">
						</div>
						<div class="input_wrap">
							<label for="email">E-mail </label>
							<input type="email" name="email" placeholder="Eg: rishabhjain@gmail.com" required="">
						</div>
						<div class="input_wrap">
							<label for="mobile">Phone Number</label>
							<input type="tel" name="mobile" placeholder="Eg: 9876543210" required="" pattern= "^\d{10}$" maxlength="10">
						</div>
						<div class="input_wrap">
							<label for="dob">D.O.B.</label>
							<input type="date" name="dob" required="" max="2010-12-31" min="1910-01-01">
						</div>
						<div class="input_wrap">
							<label for="password">Choose Password</label>
							<input type="password" name="password" required="" placeholder="Atleast 6 characters" minlength="6" onselectstart="return false" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" autocomplete=off>
						</div>
						<div class="input_wrap">
							<label for="confirm_password">Confirm Password</label>
							<input type="password" name="confirm_password" required="" placeholder="Atleast 6 characters" minlength="6" onselectstart="return false" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" autocomplete=off>
						</div>
						<div class="input_wrap">
							<label for="security_question">Security Question</label>
							<select name="security_question" required="">
								<option value="-1" selected="true" disabled="disabled">--Select a Question--</option>
								<option value="1">Your Favourite Animal</option>
								<option value="2">Your Favourite cartoon character</option>
								<option value="3">Your Nickname</option>
								<option value="4">Your Birth City</option>
							</select>
						</div>
						<div class="input_wrap">
							<label for="security_answer">Your Answer</label>
							<input type="text" name="security_answer" required="">
						</div>
						<div class="input_wrap" style="margin-bottom: 5px; width: 42%;">
							<label for="volunteer_pic">Upload Photo</label>
						</div>
						<div class="input_wrap" style="margin-bottom: 5px; width: 54%;">
							<input type="file" name="volunteer_pic" required="">
						</div>
						<label for="address">Present Address</label>
						<textarea rows="4" cols="40" placeholder="Eg: Enter Address" required="" name="address"></textarea>
						<center>
							<button type="submit" name="volunteer">SIGN UP <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></button>
							<br>
							<a href="login.php">Already Registered? <u>Sign In<u></a>	
						</center>
					</form>
				</div>
				<div id="ngo_form" class="sign_up_form">
					<form action="assets/sign_up.php" onsubmit="return validateForm('ngo')" method="POST">
						<div class="input_wrap">
							<label for="ngo_name">NGO Name</label>
							<input type="text" name="ngo_name" placeholder="Eg: CRY" required="">
						</div>
						<div class="input_wrap">
							<label for="email">E-mail </label>
							<input type="email" name="email" placeholder="Eg: contact@cry.org" required="">
						</div>
						<div class="input_wrap">
							<label for="mobile">Phone Number</label>
							<input type="tel" name="mobile" placeholder="Eg: 9876543210" required="" pattern= "^\d{10}$" maxlength="10">
						</div>
						<div class="input_wrap">
							<label for="district">District</label>
							<input type="text" name="district" placeholder="Eg: North 24 Parganas" required="">
						</div>
						<div class="input_wrap">
							<label for="password">Choose Password</label>
							<input type="password" name="password" required="" placeholder="Atleast 6 characters" minlength="6" onselectstart="return false" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" autocomplete=off>
						</div>
						<div class="input_wrap">
							<label for="confirm_password">Confirm Password</label>
							<input type="password" name="confirm_password" required="" placeholder="Atleast 6 characters" minlength="6" onselectstart="return false" onpaste="return false;" onCopy="return false" onCut="return false" onDrag="return false" onDrop="return false" autocomplete=off>
						</div>
						<div class="input_wrap">
							<label for="security_question">Security Question</label>
							<select name="security_question" required="">
								<option value="-1" selected="true" disabled="disabled">--Select a Question--</option>
								<option value="1">Your Favourite Animal</option>
								<option value="2">Your Favourite cartoon character</option>
								<option value="3">Your Nickname</option>
								<option value="4">Your Birth City</option>
							</select>
						</div>
						<div class="input_wrap">
							<label for="security_answer">Your Answer</label>
							<input type="text" name="security_answer" required="">
						</div>
						<label for="address">Present Address</label>
						<textarea rows="4" cols="40" placeholder="Eg: Enter Address" required="" name="address"></textarea>
						<center>
							<button type="submit" name="ngo">SIGN UP <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></button>
							<br>
							<a href="login.php">Already Registered? <u>Sign In<u></a>	
						</center>
					</form>
				</div>
				
			</div>
		</div>
		<div id="push" style="height: 100px"></div>
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
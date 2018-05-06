<?php  
	include_once("assets/ngo_manager.php");
	include_once("assets/db_connect.php");
	$ngo_id = $_SESSION["id"];
	$sql_query = "SELECT * FROM `requests` WHERE  `ngo_id` = '$ngo_id'";
	$results = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
	$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
	$s_clothes = $row['s_clothes'];
	$l_clothes = $row['l_clothes'];
	$utensils = $row['utensils'];
	$stationeries = $row['stationeries'];
	$blankets = $row['blankets'];
	mysqli_close($connection);
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
		<style type="text/css">
			@media (max-width: 640px){
			    body{
			    	background-image: url(img/background_small.jpg);
			    }
			}
		</style>
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
						<li class="nav-item active"><a href="ngorequest.php">Home</a></li>
						<li><a href="upcomingdeliveries.php">Upcoming Deliveries</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<form action="assets/sign_out.php" method="POST" class="navbar-form navbar-right">
								<button type="submit" class="btn btn-danger btn-sm">Sign Out</button>
							</form>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container-fluid">
			<div id="ngo_request">
				<div id="current_request">
					<h2>Current Request</h2>
					<table>
						<thead>
							<th>Items</th>
							<th>Quantity</th>
						</thead>
						<tbody>
							<tr>
								<td>Clothes(S)</td>
								<td><?php echo($s_clothes); ?></td>
							</tr>
							<tr>
								<td>Clothes(L)</td>
								<td><?php echo($l_clothes); ?></td>
							</tr>
							<tr>
								<td>Utensils</td>
								<td><?php echo($utensils); ?></td>
							</tr>
							<tr>
								<td>Stationeries</td>
								<td><?php echo($stationeries); ?></td>
							</tr>
							<tr>
								<td>Blankets</td>
								<td><?php echo($blankets); ?></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="update_request" >
					<h2>Update Request</h2>
					<form action="assets/update_request.php" method="POST">
						<label for="s_clothes">Clothes (S):</label>
						<input type="number" name="s_clothes" min="0" max="1000" value="0">
						<label for="l_clothes">Clothes (L):</label>
						<input type="number" name="l_clothes" min="0" max="1000" value="0">
						<label for="utensils">Utensils:</label>
						<input type="number" name="utensils" min="0" max="1000" value="0">
						<label for="stationeries">Stationeries:</label>
						<input type="number" name="stationeries" min="0" max="1000" value="0">
						<label for="blankets">Blankets:</label>
						<input type="number" name="blankets" min="0" max="1000" value="0">
						<button type="submit">Update</button>
					</form>
				</div>
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
	</body>
</html>
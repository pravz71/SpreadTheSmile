<?php 
	include_once("assets/ngo_manager.php");
	include_once("assets/db_connect.php");
	$ngo_id = $_SESSION['id']; 
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Spread The Smile</title>
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="style.css">
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600" rel="stylesheet">
		<script type="text/javascript" src="lib/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="lib/bootstrap/js/bootstrap.min.js"></script>
		<style type="text/css">

			@media(max-width: 700px){
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
						<li><a href="ngorequest.php">Home</a></li>
						<li class="nav-item active"><a href="upcomingdeliveries.php"></a></li>
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
		<div class="container">
			<div id="unassigned_tasks" class="row">
				<?php  
					$sql_query = "SELECT * FROM `orders` ORDER BY `isDelivered`, `isPicked`";
					$results  = mysqli_query($connection,$sql_query)  or die ("Error: " . mysqli_error());
					if(mysqli_num_rows($results) === 0)
					{
						$consignment = "<div class='empty_task'><h2>No upcoming delivery yet.</h2></div>";
						echo ($consignment);
					}
					while($row = mysqli_fetch_array($results,MYSQLI_ASSOC))
					{
						$order_id = $row['id'];
						$isPicked = $row['isPicked'];
						$isDelivered = $row['isDelivered'];
						$orderAvailable = false; //So that all the orders are not printed
						$sql_query = "SELECT `order_id`, `name`, `phone`, `pincode`, `flat`, `street`,`pickup_time`, DATE_FORMAT(DATE_ADD(`pickup_date`, INTERVAL 10 DAY),'%b %d %Y') AS `delivery_date` FROM `pickup` WHERE `order_id` = '$order_id'";
						$res  = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
						$pickup = mysqli_fetch_array($res,MYSQLI_ASSOC);
						$consignment = "<div class='tasks'><ul><li>Items: <ul>";
						$sql_query = "SELECT * FROM `consignments` WHERE `ngo_id` = '$ngo_id' AND `order_id` = '$order_id'";
						$res  = mysqli_query($connection,$sql_query);
						while($data = mysqli_fetch_array($res,MYSQLI_ASSOC))
						{
							$orderAvailable = true;
							$consignment .= "<li>";
							$consignment .= $data['item'] . " (" . $data['quantity'] . ")";
							$consignment .= "</li>";
						}
						$consignment .= "</ul></li><li>Delivery by : " . $pickup['delivery_date'] . "</li></ul>";
						if ($isDelivered === 'NO')
						{
							$consignment .= "<form action='assets/acknowledge_delivery.php' method='POST'><input type='hidden' name='order_id' value='" . $order_id . "'><button type='submit' name='delivered'>Acknowledge Delivery</button></form></div>";
						}
						elseif ($isDelivered === 'YES' || $isDelivered === 'Y') {
							$consignment .= "</div>";
						}
						if($orderAvailable){
							echo ($consignment);
						}
					}
					mysqli_close($connection);
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
	</body>
</html>
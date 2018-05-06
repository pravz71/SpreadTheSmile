<?php
	include_once("assets/admin_manager.php");
	include_once("assets/db_connect.php");
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
						<li class="nav-item active"><a href="ngodetails.php">Home</a></li>
						<li><a href="admindeliveries.php">Deliveries</a></li>
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
			<div id="ngo_details">
			<?php
				$sql_query = "SELECT * FROM `requests` WHERE `ngo_id` = 1";
				$results = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
				$row = mysqli_fetch_array($results,MYSQLI_ASSOC);
				$ngo = "<div class='ngo_status'><h3>";
				$ngo_name = "Warehouse";
				$s_clothes = $row['s_clothes'];
				$l_clothes = $row['l_clothes'];
				$utensils = $row['utensils'];
				$stationeries = $row['stationeries'];
				$blankets = $row['blankets'];
				$ngo .= $ngo_name . "</h3><table><thead><th>Items</th><th>Qty.</th></thead><tbody><tr><td>Clothes(S)</td><td>" . $s_clothes . "</td></tr>";
				$ngo .= "<tr><td>Clothes(L)</td><td>" . $l_clothes . "</td></tr>";
				$ngo .= "<tr><td>utensils</td><td>" . $utensils . "</td></tr>";
				$ngo .= "<tr><td>Stationeries</td><td>" . $stationeries . "</td></tr>";
				$ngo .= "<tr><td>Blankets</td><td>" . $blankets . "</td></tr>";
				$ngo .= "</tbody></table></div>";
				echo($ngo);

				$sql_query = "SELECT `ngo_id`, `ngo_name`, `s_clothes`, `l_clothes`, `utensils`, `stationeries`, `blankets`, DATE_FORMAT(`req_date`,'%b %d %Y') AS `req_date` FROM `requests` WHERE `ngo_id` != 1";
				$results = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
				while ($row = mysqli_fetch_array($results,MYSQLI_ASSOC)) 
				{
					$ngo = "<div class='ngo_status'><h3>";
					$ngo_id = $row['ngo_id'];
					$req_date = $row['req_date'];
					$ngo_name = $row['ngo_name'];
					$s_clothes = $row['s_clothes'];
					$l_clothes = $row['l_clothes'];
					$utensils = $row['utensils'];
					$stationeries = $row['stationeries'];
					$blankets = $row['blankets'];
					// NGO Deliveries on the way 

					$sql_query = "SELECT consignments.item, SUM(consignments.quantity) AS `quantity` FROM `consignments` INNER JOIN orders on orders.id = consignments.order_id WHERE consignments.ngo_id = '$ngo_id' && orders.isDelivered != 'YES' GROUP BY consignments.item";
					$res = mysqli_query($connection,$sql_query) or die ("Error : " . mysqli_error());
					$items = array("Clothes(S)" => 0,
						"Clothes(L)" => 0,
						"Utensils" => 0,
						"Stationeries" => 0,
						"Blankets" => 0
					 );
					while ($data = mysqli_fetch_array($res,MYSQLI_ASSOC)) 
					{
						$item = $data['item'];
						$qty = $data['quantity'];
						$items[$item] = $qty;
					}

					//Total Request = (req) - (on the way deliveries)

					$s_clothes -= $items['Clothes(S)'];
					$l_clothes -= $items['Clothes(L)'];
					$utensils -= $items['Utensils'];
					$stationeries -= $items['Stationeries'];
					$blankets -= $items['Blankets'];
					$s_clothes = max(0, $s_clothes);
					$l_clothes = max(0, $l_clothes);
					$utensils = max(0, $utensils);
					$stationeries = max(0, $stationeries);
					$blankets = max(0, $blankets);
					$ngo .= $ngo_name . "</h3><h5>Request Date: " . $req_date . "</h5><table><thead><th>Items</th><th>Qty.</th></thead><tbody><tr><td>Clothes(S)</td><td>" . $s_clothes . "</td></tr>";
					$ngo .= "<tr><td>Clothes(L)</td><td>" . $l_clothes . "</td></tr>";
					$ngo .= "<tr><td>Utensils</td><td>" . $utensils . "</td></tr>";
					$ngo .= "<tr><td>Stationeries</td><td>" . $stationeries . "</td></tr>";
					$ngo .= "<tr><td>Blankets</td><td>" . $blankets . "</td></tr>";
					$ngo .= "</tbody></table><form action = 'sendfromwarehouse.php' method = 'POST'><input type='hidden' name='ngo_id' value='" . $ngo_id . "'><button type='submit'>Send</button></form></div>";
					echo($ngo);
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
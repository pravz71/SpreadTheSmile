<?php 
	session_start();
	include_once("assets/db_connect.php");
	$items = array('s_clothes' => "" ,
					'l_clothes' => "",
					'utensils' => "",
					'stationeries' => "",
					'blankets' => ""
			 );
	$keys = array_keys($items);
	for ($i = 0; $i < count($keys); $i++) 
	{ 
		$qty = 0;
		$temp = "<option value='-1' selected='true' disabled='disabled'>Select Organization</option>";
		$sql_query = "SELECT * FROM `requests` WHERE `$keys[$i]` > '$qty'";
		$results = mysqli_query($connection,$sql_query) or die ("Error: " . mysqli_error());
		if (mysqli_num_rows($results) > 0) {
			while($row = mysqli_fetch_array($results,MYSQLI_ASSOC))
			{
				$temp .= "<option value='" . $row["ngo_id"] . "'>" . $row["ngo_name"] . " (Need:" . $row[$keys[$i]] . ")</option>";
			}
		}
		$temp .= "<option value='100'>Warehouse</option>";
		$items[$keys[$i]] = $temp;
	}
	mysqli_close($connection);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Spread The Smile</title>
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script type="text/javascript" src="lib/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="lib/bootstrap/js/bootstrap.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
		<nav class="navbar navbar-default navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">SpreadTheSmile</a>
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
						<li>Sign Out</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<div id="items"> 
				<form action="assets/update_cart.php" onsubmit="return validateCart()" method="POST">
					<div class="item">
						<label for="s_clothes">Clothes (S):</label>
						<input type="number" name="s_clothes" min="0" max="1000" value="0">
						<select name="s_clothes_name" disabled="">
							<?php echo($items["s_clothes"]); ?>
						</select>
					</div>
					<div class="item">
						<label for="l_clothes">Clothes (L):</label>
						<input type="number" name="l_clothes" min="0" max="1000" value="0">
						<select name="l_clothes_name" disabled="">
							<?php echo($items["l_clothes"]); ?>
						</select>
					</div>
					<div class="item">
						<label for="utensils">Utensils:</label>
						<input type="number" name="utensils" min="0" max="1000" value="0">
						<select name="utensils_name" disabled="">
							<?php echo($items["utensils"]); ?>
						</select>
					</div>
					<div class="item">
						<label for="stationeries">Stationeries:</label>
						<input type="number" name="stationeries" min="0" max="1000" value="0">
						<select name="stationeries_name" disabled="">
							<?php echo($items["stationeries"]); ?>
						</select>
					</div>
					<div class="item">
						<label for="blankets">Blankets:</label>
						<input type="number" name="blankets" min="0" max="1000" value="0">
						<select name="blankets_name" disabled="">
							<?php echo($items["blankets"]); ?>
						</select>
					</div>
					<div class="item">
						<label for="others">Others:</label>
						<input type="number" name="others" min="0" max="1000" value="0">
						<select name="others_name" disabled="">
							<option value="-1" selected="true" disabled="disabled" >Select Organization</option>
							<option value="1">Warehouse</option>
						</select>
					</div>
					<hr>
					<button type="submit">Proceed <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span> </button>
				</form>
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
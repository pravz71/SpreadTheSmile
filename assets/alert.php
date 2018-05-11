<?php
	function generateAlert($msg)
	{
		if($msg === "valid acknowledge delivery")
		{
			return "<script>
						alert('Delivery has been acknowledged');
						window.location = '../upcomingdeliveries.php';
					 </script>";
		}
		if($msg === "invalid acknowledge delivery")
		{
			return "<script>
						alert('Sorry something went wrong!');
						window.location = '../upcomingdeliveries.php';
					 </script>";
		}
		if($msg === "assign volunteer successful")
		{
			return "<script>
						alert('You have been successfully added to the task!');
						window.location = '../volunteertasks.php';
					 </script>";
		}
		if($msg === "assign volunteer unsuccessful")
		{
			return "<script>
						alert('Sorry something went wrong!');
						window.location = '../unassignedvolunteer.php';
					 </script>";
		}
		if($msg === "send from warehouse successful")
		{
			return "<script>
						alert('Your request has been submitted.');
						window.location = '../ngodetails.php';
					 </script>";
		}
		if($msg === "send from warehouse unsuccessful")
		{
			return "<script>
						alert('Something went wrong. Please try again.');
						window.location = '../ngodetails.php';
					 </script>";
		}
		if($msg === "invalid user")
		{
			return "<script>
						alert('Email or password is incorrect!');
						window.location = '../login.php';
					 </script>";
		}
		if($msg === "account created")
		{
			return "<script>
						alert('Account Created!!!');
						window.location = '../login.php';
					 </script>";
		}
		if($msg === "account not created")
		{
			return "<script>
						alert('Something went wrong. Please try again.');
						window.location = '../signup.php';
					 </script>";
		}
		if($msg === "email exixts")
		{
			return "<script>
						alert('Email-Id already exists!!!');
						window.location = '../signup.php';
					 </script>";
		}
		if($msg === "ngo request successful")
		{
			return "<script>
						alert('Your request has been submitted.');
						window.location = '../ngorequest.php';
					 </script>";
		}
		if($msg === "ngo request unsuccessful")
		{
			return "<script>
						alert('Something went wrong. Please try again.');
						window.location = '../ngorequest.php';
					 </script>";
		}
		if($msg === "update task successful")
		{
			return "<script>
						alert('Changes have been made successfully.');
						window.location = '../volunteertasks.php';
					 </script>";
		}
		if($msg === "update task unsuccessful")
		{
			return "<script>
						alert('Sorry something went wrong!');
						window.location = '../volunteertasks.php';
					 </script>";
		}
		if($msg === "")
		{
			return ;
		}
		if($msg === "")
		{
			return ;
		}
		if($msg === "")
		{
			return ;
		}
		if($msg === "")
		{
			return ;
		}
		if($msg === "")
		{
			return ;
		}
	}

?>
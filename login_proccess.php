<?php
	include ('../scripts/connect.php');
	session_start();
	
	if($_SERVER["REQUEST_METHOD"] == "POST") {
		//username and password sent from form
	
		$myusername = mysqli_real_escape_string($link, $_POST['username']);
		$mypassword = mysqli_real_escape_string($link, $_POST['password']);
		
		$sql = "SELECT user_id FROM login WHERE username = '$myusername' and password = '$mypassword'";
		$result = mysqli_query($link, $sql);
		$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
		//$active = $row['active'];
		
		$count = mysqli_num_rows($result);
		
		
		//If result matched $myusername and $mypassword, table row must be 1 row 
		if($count == 1) {
			//session_register("myusername");
			$_SESSION['username'] = $myusername;
			$_SESSION['login_user'] = $myusername;
			
			header("location: ../Home.html");
		}else {
			$error = 'Your Login Name or Password is invalid';
			echo($error);
		}
	}
	
?>
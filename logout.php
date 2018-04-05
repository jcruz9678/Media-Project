<?php
	session_start();
	unset($login_session);
	session_destroy();
	
	header("Location: ../index.html");
	exit;
?>
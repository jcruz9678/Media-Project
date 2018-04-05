
<?php
$hostname = 'localhost';
$dbname = 'user';
$username = 'root';
$password = 'hershey22';

$link = mysqli_connect($hostname, $username, $password) or die ('Connection to host has failed.');
mysqli_select_db($link, $dbname) or die ('Database name is not available.');
?>
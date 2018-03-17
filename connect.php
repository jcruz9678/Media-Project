<?php

$user = 'root';
$pass = '';
$db = 'media_db';

$db = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

echo "Success";

?>
<?php
  include_once 'appacheConnection.php';

$db = mysqli_select_db("userLoginData");
if(empty($db)){
   $sqlDb = "CREATE DATABASE userLoginData";
   if (mysqli_query($connection, $sqlDb)) {
       echo "Database created successfully";
   }
   else {
      echo "Error creating database: " . $connection->error;
      header("Location:loginModel.php?createTable= database Exist");
     }
  }
  else{

    echo 'Database Exist'.$db;
    header("Location:loginModel.php");
  }

    $sqlTb = "CREATE Table userLoginData.user (
        id int(50) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        first nvarchar(100) not null,
        last nvarchar(100) not null,
        email nvarchar(100) not null,
        uid nvarchar(100) not null,
        password nvarchar(100)not null,
        confromPassword nvarchar(100) not null

    )";

    if(mysqli_query($connection,$sqlTb )){

      echo 'Table Created successfully';
    }
    else {
       echo "Error creating database: " . $connection->error;
   }
 ?>

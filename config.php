<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpassword = "";
$dbdatabasename = "nike_shoop";
$db = mysqli_connect($dbhost, $dbuser, $dbpassword);

if (!$db) 
{
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_select_db($db, $dbdatabasename);
?>
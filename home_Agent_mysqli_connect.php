<?php

DEFINE ('DB_USER', 'employeeweb');
DEFINE ('DB_PASSWORD', 'password');
DEFINE ('DB_HOST','localhost');
DEFINE('DB_NAME','upperlimit');

$dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME)
OR die('Could not connect to mysql' . mysqli_connect_error());

?>
<?php 
/**
 * Database parameters
 * @var string
 */
$database_name = 'flamy';
$username = 'root';
$password = 'root';
$host = 'mysql:3306';

$conn = mysqli_connect($host, $username, $password, $database_name) or die("Sorry, wrong database configuration");



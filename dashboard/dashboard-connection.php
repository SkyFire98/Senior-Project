<?php
$servername = "127.0.0.1";
$username = "root";     # change this user name!
$password = "PASSWORD";    # Change the password!
$companydb = "cps";

// Create connection
$conn = new mysqli($servername, $username, $password, $companydb);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

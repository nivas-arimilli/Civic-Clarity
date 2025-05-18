<?php
// db_config.php
$conn = new mysqli("localhost", "root", "", "constitution");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
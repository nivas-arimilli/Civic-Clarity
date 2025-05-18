<?php
// Database connection
$conn = new mysqli("localhost", "root", "", "trash");

// Check connection
if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => "Connection failed: " . $conn->connect_error]));
}

// Get form data
$sno = $_POST['sno'];

// Use prepared statement to prevent SQL injection
$stmt = $conn->prepare("DELETE FROM citizenship WHERE SNo = ?");
$stmt->bind_param("i", $sno);

// Execute and check result
if ($stmt->execute()) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'message' => $stmt->error]);
}

// Close statement and connection
$stmt->close();
$conn->close();
?>
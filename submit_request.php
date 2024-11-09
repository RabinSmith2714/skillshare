<?php
include('db.php'); // Include your database connection

header('Content-Type: application/json'); // Set content type to JSON

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve and validate form data
    $userid = $_POST['userid'];
    $date_time = $_POST['date_time'];
    $language = $_POST['language'];
    $link = $_POST['link'];
    $status = $_POST['status'];

    // Check for empty fields
    if (empty($userid) || empty($date_time) || empty($language) || empty($link)) {
        echo json_encode(["status" => "error", "message" => "All fields are required."]);
        exit;
    }

    // Prepare and execute the SQL statement
    $sql = "INSERT INTO feedback_requests (User_id, date_time, language_pre, link, status) VALUES ($userid,$date_time,$language,$link,$status)";
    $stmt = $conn->prepare($sql);
    
    if ($stmt) {
        $stmt->bind_param("sssss", $userid, $date_time, $language, $link, $status);
        if ($stmt->execute()) {
            // Return success response
            echo json_encode(["status" => "success", "message" => "Feedback submitted successfully!"]);
        } else {
            echo json_encode(["status" => "error", "message" => "Database insertion failed."]);
        }
        $stmt->close();
    } else {
        echo json_encode(["status" => "error", "message" => "Failed to prepare SQL statement."]);
    }

    $conn->close();
    exit;
} else {
    echo json_encode(["status" => "error", "message" => "Invalid request method."]);
    exit;
}

<?php
// Include your database connection file
include('db.php');

// Check if the form is submitted via POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get form data
    $userid = $_POST['userid'];
    $date_time = $_POST['date_time'];
    $language = $_POST['language'];
    $link = $_POST['link'];
    $status = $_POST['status'];  // 'Sent' by default, can be updated later
    
    // Validate inputs (basic validation)
    if (empty($userid) || empty($date_time) || empty($language) || empty($link)) {
        die("All fields are required.");
    }
    
    // Prepare SQL query to insert form data into the database
    $sql = "INSERT INTO feedback_requests (User_id, date_time, language_pre, link, status) 
            VALUES (?, ?, ?, ?, ?)";
    
    // Prepare statement
    if ($stmt = $conn->prepare($sql)) {
        // Bind parameters
        $stmt->bind_param("sssss", $userid, $date_time, $language, $link, $status);
        
        // Execute query
        if ($stmt->execute()) {
            // Success, return response
            echo json_encode(["status" => "success", "message" => "Feedback submitted successfully!"]);
        } else {
            // Error in execution
            echo json_encode(["status" => "error", "message" => "Error in submission."]);
        }
        
        // Close the statement
        $stmt->close();
    } else {
        // Error preparing the statement
        echo json_encode(["status" => "error", "message" => "Error preparing the statement."]);
    }
    
    // Close the database connection
    $conn->close();
}
?>

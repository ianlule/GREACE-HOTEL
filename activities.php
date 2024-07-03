<?php

include 'connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $student_name = $_POST['student_name'];
    $class = $_POST['class'];
    $activities = isset($_POST['activities']) ? implode(", ", $_POST['activities']) : "";

    $sql = "INSERT INTO activities (student_name, class, activities) 
            VALUES ('$student_name', '$class', '$activities')";

if ($conn->query($sql) === TRUE) {
    header("Location: enrollment_successful.html");
    exit();
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
}
?>

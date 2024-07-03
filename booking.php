<?php

include 'connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $student_name = $_POST['student_name'];
    $class = $_POST['class'];
    $age = $_POST['age'];
    $bed_preference = $_POST['bed_preference'];
    $allergies = $_POST['allergies'];
    $disabilities = $_POST['disabilities'];
    $former_school = $_POST['former_school'];
    $guardian_name = $_POST['guardian_name'];
    $guardian_contact = $_POST['guardian_contact'];
    $email = $_POST['email'];
    $date = $_POST['date'];

    $sql = "INSERT INTO bookings (student_name, class, age, bed_preference, allergies, disabilities, former_school, guardian_name, guardian_contact, email, date) 
            VALUES ('$student_name', '$class', '$age', '$bed_preference', '$allergies', '$disabilities', '$former_school', '$guardian_name', '$guardian_contact', '$email', '$date')";

    if ($conn->query($sql) === TRUE) {
        echo "Booking successful";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

<?php

include 'connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $student_name = $_POST['name'];
    $amount = $_POST['amount'];
    $payment_date = $_POST['payment_date'];

    $sql = "INSERT INTO payments (student_name, amount, payment_date) VALUES ('$student_name', '$amount', '$payment_date')";

    if ($conn->query($sql) === TRUE) {
        header("Location: payment_success.html");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
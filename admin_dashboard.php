<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: admin_login.html");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Welcome, Admin</h1>
    <nav>
        <ul>
            <li><a href="view_bookings.php">View Bookings</a></li>
            <li><a href="view_payments.php">View Payments</a></li>
            <li><a href="view_registrations.php">View Registrations</a></li>
            <li><a href="view_rules.php">View Rules</a></li>
            <li><a href="view_activities.php">View Activities</a></li>
            <li><a href="view_contacts.php">View Contacts</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>
</body>
</html>

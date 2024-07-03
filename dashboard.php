<?php

include 'connection.php';

// Fetch registrations data
$registrationsQuery = "SELECT DATE(reg_date) as date, COUNT(*) as count FROM registrations GROUP BY DATE(reg_date)";
$registrationsResult = $conn->query($registrationsQuery);
$registrationsData = [];
$registrationsLabels = [];
while($row = $registrationsResult->fetch_assoc()) {
    $registrationsLabels[] = $row['date'];
    $registrationsData[] = $row['count'];
}

// Fetch bookings data
$bookingsQuery = "SELECT DATE(booking_date) as date, COUNT(*) as count FROM bookings GROUP BY DATE(booking_date)";
$bookingsResult = $conn->query($bookingsQuery);
$bookingsData = [];
$bookingsLabels = [];
while($row = $bookingsResult->fetch_assoc()) {
    $bookingsLabels[] = $row['date'];
    $bookingsData[] = $row['count'];
}

// Fetch activities data
$activitiesQuery = "SELECT activities FROM activities";
$activitiesResult = $conn->query($activitiesQuery);
$activitiesCount = [
    'Chess Club' => 0,
    'Football' => 0,
    'Volleyball' => 0,
    'Basketball' => 0
];
while($row = $activitiesResult->fetch_assoc()) {
    $activities = explode(", ", $row['activities']);
    foreach($activities as $activity) {
        if(array_key_exists($activity, $activitiesCount)) {
            $activitiesCount[$activity]++;
        }
    }
}
$activitiesLabels = array_keys($activitiesCount);
$activitiesData = array_values($activitiesCount);

$conn->close();

echo json_encode([
    'registrations' => [
        'labels' => $registrationsLabels,
        'data' => $registrationsData
    ],
    'bookings' => [
        'labels' => $bookingsLabels,
        'data' => $bookingsData
    ],
    'activities' => [
        'labels' => $activitiesLabels,
        'data' => $activitiesData
    ]
]);
?>

<?php
header('Content-Type: application/json');

$data = [
    'registrations' => [
        'labels' => ['Jan', 'Feb', 'Mar', 'Apr'],
        'data' => [10, 20, 30, 40]
    ],
    'bookings' => [
        'labels' => ['Jan', 'Feb', 'Mar', 'Apr'],
        'data' => [5, 15, 25, 35]
    ],
    'activities' => [
        'labels' => ['Chess', 'Football', 'Volleyball', 'Basketball'],
        'data' => [10, 20, 15, 5]
    ]
];

echo json_encode($data);
?>

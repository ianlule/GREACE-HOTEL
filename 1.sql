-- Create the connection file
CREATE DATABASE IF NOT EXISTS hostel_management;
USE hostel_management;

-- Table for registrations
CREATE TABLE IF NOT EXISTS registrations (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    class VARCHAR(30) NOT NULL,
    age INT(3) NOT NULL,
    allergies VARCHAR(100),
    disabilities VARCHAR(100),
    former_school VARCHAR(100),
    guardian_name VARCHAR(50),
    guardian_contact VARCHAR(15),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table for bookings
CREATE TABLE IF NOT EXISTS bookings (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    class VARCHAR(30) NOT NULL,
    bed_preference VARCHAR(20),
    age INT(3),
    allergies VARCHAR(100),
    disabilities VARCHAR(100),
    former_school VARCHAR(100),
    guardian_name VARCHAR(50),
    guardian_contact VARCHAR(15),
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table for payments
CREATE TABLE IF NOT EXISTS payments (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class VARCHAR(30) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table for hostel rules
CREATE TABLE IF NOT EXISTS rules (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    rule_text TEXT NOT NULL,
    rule_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table for activities
CREATE TABLE IF NOT EXISTS activities (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class VARCHAR(30) NOT NULL,
    activities TEXT,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table for contacts
CREATE TABLE IF NOT EXISTS contacts (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    role VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

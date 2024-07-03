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

-- Sample data for registrations
INSERT INTO registrations (name, class, age, allergies, disabilities, former_school, guardian_name, guardian_contact)
VALUES 
('John Doe', '10th Grade', 15, 'None', 'None', 'ABC High School', 'Jane Doe', '1234567890'),
('Jane Smith', '9th Grade', 14, 'Peanuts', 'None', 'XYZ Middle School', 'John Smith', '0987654321');

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

-- Sample data for bookings
INSERT INTO bookings (student_name, class, bed_preference, age, allergies, disabilities, former_school, guardian_name, guardian_contact)
VALUES 
('John Doe', '10th Grade', 'Upper Bed', 15, 'None', 'None', 'ABC High School', 'Jane Doe', '1234567890'),
('Jane Smith', '9th Grade', 'Lower Bed', 14, 'Peanuts', 'None', 'XYZ Middle School', 'John Smith', '0987654321');

-- Table for payments
CREATE TABLE IF NOT EXISTS payments (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class VARCHAR(30) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample data for payments
INSERT INTO payments (student_name, class, amount)
VALUES 
('John Doe', '10th Grade', 500.00),
('Jane Smith', '9th Grade', 300.00);

-- Table for hostel rules
CREATE TABLE IF NOT EXISTS rules (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    rule_text TEXT NOT NULL,
    rule_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample data for hostel rules
INSERT INTO rules (rule_text)
VALUES 
('Maintain cleanliness in the hostel premises.'),
('Respect other students and hostel staff.'),
('Adhere to the hostel timings.'),
('Participate in compulsory activities.');

-- Table for activities
CREATE TABLE IF NOT EXISTS activities (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class VARCHAR(30) NOT NULL,
    activities TEXT,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample data for activities
INSERT INTO activities (student_name, class, activities)
VALUES 
('John Doe', '10th Grade', 'Chess Club, Football'),
('Jane Smith', '9th Grade', 'Volleyball, Basketball');

-- Table for contacts
CREATE TABLE IF NOT EXISTS contacts (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    role VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample data for contacts
INSERT INTO contacts (name, role, phone, email)
VALUES 
('Alice Johnson', 'Hostel Warden', '555-1234', 'alice.johnson@hostel.com'),
('Bob Smith', 'Assistant Warden', '555-5678', 'bob.smith@hostel.com'),
('Carol White', 'Maintenance Manager', '555-8765', 'carol.white@hostel.com');

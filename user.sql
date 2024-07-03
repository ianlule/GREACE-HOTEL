-- Create the users table for login
CREATE TABLE IF NOT EXISTS users (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    role VARCHAR(20) DEFAULT 'user',
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample data for users
-- Passwords should be hashed before inserting into the database
-- For demonstration purposes, we are using plain text passwords here. In real applications, always hash passwords.

-- Note: Use PHP's password_hash() function to generate hashed passwords.
INSERT INTO users (username, password, email, role)
VALUES 
('admin', '$2y$10$Cj/I.KOdyB5RQjNOEorftuexF/BoJ.qcH1xRgH8lXePAf/bXpFby.', 'admin@hostel.com', 'admin'),
('johndoe', '$2y$10$A9.vJPPQ3p3gJ0ayRQKgK.3oVvj1AEwcuJX29k3j4z8Vb/.9S0zsq', 'johndoe@example.com', 'user');

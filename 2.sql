-- Sample data for registrations
INSERT INTO registrations (name, class, age, allergies, disabilities, former_school, guardian_name, guardian_contact)
VALUES 
('John Doe', '10th Grade', 15, 'None', 'None', 'ABC High School', 'Jane Doe', '1234567890'),
('Jane Smith', '9th Grade', 14, 'Peanuts', 'None', 'XYZ Middle School', 'John Smith', '0987654321');

-- Sample data for bookings
INSERT INTO bookings (name, class, bed_preference, age, allergies, disabilities, former_school, guardian_name, guardian_contact)
VALUES 
('John Doe', '10th Grade', 'Upper Bed', 15, 'None', 'None', 'ABC High School', 'Jane Doe', '1234567890'),
('Jane Smith', '9th Grade', 'Lower Bed', 14, 'Peanuts', 'None', 'XYZ Middle School', 'John Smith', '0987654321');

-- Sample data for payments
INSERT INTO payments (student_name, class, amount)
VALUES 
('John Doe', '10th Grade', 500.00),
('Jane Smith', '9th Grade', 300.00);

-- Sample data for hostel rules
INSERT INTO rules (rule_text)
VALUES 
('Maintain cleanliness in the hostel premises.'),
('Respect other students and hostel staff.'),
('Adhere to the hostel timings.'),
('Participate in compulsory activities.');

-- Sample data for activities
INSERT INTO activities (student_name, class, activities)
VALUES 
('John Doe', '10th Grade', 'Chess Club, Football'),
('Jane Smith', '9th Grade', 'Volleyball, Basketball');

-- Sample data for contacts
INSERT INTO contacts (name, role, phone, email)
VALUES 
('Alice Johnson', 'Hostel Warden', '555-1234', 'alice.johnson@hostel.com'),
('Bob Smith', 'Assistant Warden', '555-5678', 'bob.smith@hostel.com'),
('Carol White', 'Maintenance Manager', '555-8765', 'carol.white@hostel.com');

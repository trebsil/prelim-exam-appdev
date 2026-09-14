-- ============================================
-- Seed data for gym_db
-- Run this AFTER gym_dbms.sql (schema) has been
-- created successfully, on empty tables.
-- ============================================

-- ---------- Members (20 rows) ----------
INSERT INTO "Members" (first_name, last_name, email, phone_number, date_of_birth, join_date, status) VALUES
('Alice', 'Reyes', 'alice.reyes@email.com', '09171234501', '1995-03-12', '2023-01-10', 'active'),
('Ben', 'Cruz', 'ben.cruz@email.com', '09171234502', '1998-07-22', '2023-01-15', 'active'),
('Carla', 'Santos', 'carla.santos@email.com', '09171234503', '1990-11-05', '2023-02-01', 'active'),
('Dave', 'Lim', 'dave.lim@email.com', '09171234504', '1988-05-19', '2023-02-10', 'inactive'),
('Ella', 'Garcia', 'ella.garcia@email.com', '09171234505', '2000-01-30', '2023-02-20', 'active'),
('Frank', 'Torres', 'frank.torres@email.com', '09171234506', '1992-09-14', '2023-03-01', 'suspended'),
('Grace', 'Mendoza', 'grace.mendoza@email.com', '09171234507', '1997-04-08', '2023-03-05', 'active'),
('Henry', 'Villanueva', 'henry.villanueva@email.com', '09171234508', '1985-12-25', '2023-03-12', 'active'),
('Ivy', 'Ramos', 'ivy.ramos@email.com', '09171234509', '1999-06-17', '2023-03-18', 'active'),
('Jake', 'Flores', 'jake.flores@email.com', '09171234510', '1993-08-02', '2023-04-01', 'inactive'),
('Karla', 'Ocampo', 'karla.ocampo@email.com', '09171234511', '1996-02-28', '2023-04-05', 'active'),
('Leo', 'Bautista', 'leo.bautista@email.com', '09171234512', '1991-10-11', '2023-04-15', 'active'),
('Mia', 'Aquino', 'mia.aquino@email.com', '09171234513', '2001-03-23', '2023-05-01', 'active'),
('Noel', 'Pascual', 'noel.pascual@email.com', '09171234514', '1994-07-07', '2023-05-10', 'active'),
('Owen', 'Castillo', 'owen.castillo@email.com', '09171234515', '1989-01-16', '2023-05-20', 'suspended'),
('Paula', 'Domingo', 'paula.domingo@email.com', '09171234516', '1998-11-29', '2023-06-01', 'active'),
('Quin', 'Navarro', 'quin.navarro@email.com', '09171234517', '1995-05-05', '2023-06-08', 'active'),
('Rose', 'Del Rosario', 'rose.delrosario@email.com', '09171234518', '1990-09-19', '2023-06-15', 'inactive'),
('Sam', 'Valdez', 'sam.valdez@email.com', '09171234519', '1997-12-03', '2023-07-01', 'active'),
('Tina', 'Gonzales', 'tina.gonzales@email.com', '09171234520', '1992-04-27', '2023-07-10', 'active');

-- ---------- Memberships (20 rows, member_id 1-20) ----------
INSERT INTO "Memberships" (member_id, start_date, end_date, is_active, tier) VALUES
(1, '2023-01-10', '2024-01-10', true, 'gold'),
(2, '2023-01-15', '2024-01-15', true, 'silver'),
(3, '2023-02-01', '2024-02-01', true, 'bronze'),
(4, '2023-02-10', '2023-08-10', false, 'bronze'),
(5, '2023-02-20', '2024-02-20', true, 'platinum'),
(6, '2023-03-01', '2023-09-01', false, 'silver'),
(7, '2023-03-05', '2024-03-05', true, 'gold'),
(8, '2023-03-12', '2024-03-12', true, 'bronze'),
(9, '2023-03-18', '2024-03-18', true, 'silver'),
(10, '2023-04-01', '2023-10-01', false, 'bronze'),
(11, '2023-04-05', '2024-04-05', true, 'gold'),
(12, '2023-04-15', '2024-04-15', true, 'silver'),
(13, '2023-05-01', '2024-05-01', true, 'platinum'),
(14, '2023-05-10', '2024-05-10', true, 'bronze'),
(15, '2023-05-20', '2023-11-20', false, 'silver'),
(16, '2023-06-01', '2024-06-01', true, 'gold'),
(17, '2023-06-08', '2024-06-08', true, 'bronze'),
(18, '2023-06-15', '2023-12-15', false, 'bronze'),
(19, '2023-07-01', '2024-07-01', true, 'silver'),
(20, '2023-07-10', '2024-07-10', true, 'platinum');

-- ---------- Payments (25 rows, membership_id 1-20 reused) ----------
INSERT INTO "Payments" (membership_id, amount, payment_date, method, status) VALUES
(1, 2500.00, '2023-01-10', 'card', 'paid'),
(2, 1500.00, '2023-01-15', 'gcash', 'paid'),
(3, 999.00, '2023-02-01', 'cash', 'paid'),
(4, 999.00, '2023-02-10', 'cash', 'paid'),
(5, 3500.00, '2023-02-20', 'card', 'paid'),
(6, 1500.00, '2023-03-01', 'gcash', 'paid'),
(7, 2500.00, '2023-03-05', 'card', 'paid'),
(8, 999.00, '2023-03-12', 'cash', 'pending'),
(9, 1500.00, '2023-03-18', 'gcash', 'paid'),
(10, 999.00, '2023-04-01', 'cash', 'failed'),
(11, 2500.00, '2023-04-05', 'card', 'paid'),
(12, 1500.00, '2023-04-15', 'gcash', 'paid'),
(13, 3500.00, '2023-05-01', 'card', 'paid'),
(14, 999.00, '2023-05-10', 'cash', 'paid'),
(15, 1500.00, '2023-05-20', 'gcash', 'pending'),
(16, 2500.00, '2023-06-01', 'card', 'paid'),
(17, 999.00, '2023-06-08', 'cash', 'paid'),
(18, 999.00, '2023-06-15', 'others', 'failed'),
(19, 1500.00, '2023-07-01', 'gcash', 'paid'),
(20, 3500.00, '2023-07-10', 'card', 'paid'),
(1, 2500.00, '2023-07-10', 'card', 'paid'),
(2, 1500.00, '2023-07-15', 'gcash', 'paid'),
(5, 3500.00, '2023-08-20', 'card', 'paid'),
(9, 1500.00, '2023-08-18', 'gcash', 'pending'),
(11, 2500.00, '2023-09-05', 'card', 'paid');

-- ---------- Trainers (10 rows) ----------
INSERT INTO "Trainers" (first_name, last_name, spec, phone_number, hire_date) VALUES
('Mark', 'Salazar', 'strength_training', '09181234501', '2021-01-05'),
('Nina', 'Fernandez', 'yoga', '09181234502', '2021-02-10'),
('Oscar', 'Reyes', 'cardio', '09181234503', '2021-03-15'),
('Pia', 'Manalo', 'zumba', '09181234504', '2021-04-01'),
('Ray', 'Dizon', 'crossfit', '09181234505', '2021-05-20'),
('Sheila', 'Cortez', 'pilates', '09181234506', '2021-06-11'),
('Tomas', 'Herrera', 'boxing', '09181234507', '2021-07-08'),
('Uma', 'Lorenzo', 'martial_arts', '09181234508', '2021-08-14'),
('Victor', 'Espinosa', 'general_fitness', '09181234509', '2021-09-01'),
('Wendy', 'Tolentino', 'nutrition_coaching', '09181234510', '2021-10-10');

-- ---------- Classes (10 rows, trainer_id 1-10) ----------
INSERT INTO "Classes" (class_name, trainer_id, schedule_day, start_time, end_time, capacity) VALUES
('Strength Basics', 1, 'monday', '07:00:00', '08:00:00', 15),
('Morning Yoga', 2, 'tuesday', '06:30:00', '07:30:00', 20),
('Cardio Blast', 3, 'wednesday', '17:00:00', '18:00:00', 25),
('Zumba Night', 4, 'thursday', '18:00:00', '19:00:00', 30),
('CrossFit WOD', 5, 'friday', '07:00:00', '08:00:00', 12),
('Pilates Core', 6, 'monday', '09:00:00', '10:00:00', 15),
('Boxing Fundamentals', 7, 'wednesday', '19:00:00', '20:00:00', 10),
('Martial Arts Basics', 8, 'saturday', '10:00:00', '11:00:00', 18),
('General Fitness Circuit', 9, 'sunday', '08:00:00', '09:00:00', 20),
('Nutrition Workshop', 10, 'saturday', '13:00:00', '14:00:00', 25);

-- ---------- Attendance (30 rows) ----------
INSERT INTO "Attendance" (member_id, class_id, attendance_date, status) VALUES
(1, 1, '2023-08-07', 'present'),
(2, 2, '2023-08-08', 'present'),
(3, 3, '2023-08-09', 'absent'),
(5, 4, '2023-08-10', 'present'),
(7, 5, '2023-08-11', 'present'),
(8, 6, '2023-08-07', 'present'),
(9, 7, '2023-08-09', 'cancelled'),
(11, 8, '2023-08-12', 'present'),
(12, 9, '2023-08-13', 'present'),
(13, 10, '2023-08-12', 'present'),
(1, 2, '2023-08-15', 'present'),
(2, 3, '2023-08-16', 'absent'),
(3, 4, '2023-08-17', 'present'),
(5, 5, '2023-08-18', 'present'),
(7, 1, '2023-08-14', 'present'),
(8, 2, '2023-08-15', 'present'),
(9, 3, '2023-08-16', 'present'),
(11, 4, '2023-08-17', 'cancelled'),
(12, 5, '2023-08-18', 'present'),
(13, 6, '2023-08-14', 'present'),
(14, 7, '2023-08-16', 'present'),
(16, 8, '2023-08-19', 'present'),
(17, 9, '2023-08-20', 'absent'),
(19, 10, '2023-08-19', 'present'),
(20, 1, '2023-08-21', 'present'),
(1, 5, '2023-08-25', 'present'),
(3, 6, '2023-08-21', 'present'),
(7, 7, '2023-08-23', 'present'),
(9, 8, '2023-08-26', 'present'),
(13, 9, '2023-08-27', 'present');

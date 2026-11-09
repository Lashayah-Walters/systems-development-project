-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 10.4.13.9:3306
-- Generation Time: Nov 27, 2025 at 11:42 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdb_lw3960a`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `student_id`, `room_id`, `start_date`, `end_date`, `status`) VALUES
(1, 1, 5, '2024-01-10', '2024-06-20', 'Active'),
(2, 2, 12, '2024-02-01', '2024-05-30', 'Completed'),
(3, 3, 3, '2024-03-15', '2024-09-10', 'Active'),
(4, 4, 8, '2023-09-01', '2024-06-10', 'Completed'),
(5, 5, 1, '2024-04-05', '2024-08-31', 'Active'),
(6, 6, 4, '2024-01-15', '2024-04-30', 'Cancelled'),
(7, 7, 6, '2024-02-20', '2024-09-01', 'Active'),
(8, 8, 14, '2023-10-01', '2024-06-25', 'Completed'),
(9, 9, 10, '2024-03-01', '2024-07-20', 'Active'),
(10, 10, 2, '2024-02-18', '2024-05-25', 'Completed'),
(11, 11, 9, '2024-01-05', '2024-04-18', 'Cancelled'),
(12, 12, 15, '2024-04-01', '2024-09-15', 'Active'),
(13, 13, 18, '2023-09-15', '2024-06-30', 'Completed'),
(14, 14, 7, '2024-01-12', '2024-05-29', 'Active'),
(15, 15, 20, '2024-03-02', '2024-07-10', 'Active'),
(16, 16, 11, '2024-01-25', '2024-06-01', 'Completed'),
(17, 17, 17, '2023-09-02', '2024-06-28', 'Completed'),
(18, 18, 19, '2024-02-05', '2024-05-20', 'Cancelled'),
(19, 19, 13, '2024-03-10', '2024-09-12', 'Active'),
(20, 20, 21, '2024-04-15', '2024-09-01', 'Active'),
(21, 21, 16, '2023-09-10', '2024-06-22', 'Completed'),
(22, 22, 23, '2024-01-17', '2024-04-29', 'Cancelled'),
(23, 23, 24, '2024-02-12', '2024-06-30', 'Active'),
(24, 24, 25, '2023-09-03', '2024-06-25', 'Completed'),
(25, 25, 22, '2024-03-18', '2024-09-10', 'Active'),
(26, 26, 26, '2024-04-20', '2024-09-15', 'Active'),
(27, 27, 28, '2024-01-10', '2024-05-18', 'Completed'),
(28, 28, 27, '2024-02-05', '2024-06-01', 'Cancelled'),
(29, 29, 29, '2024-03-09', '2024-08-31', 'Active'),
(30, 30, 30, '2024-04-02', '2024-09-10', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `facility_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`facility_id`, `name`) VALUES
(1, 'WiFi'),
(2, 'Desk'),
(3, 'Chair'),
(4, 'Wardrobe'),
(5, 'Ensuite Bathroom'),
(6, 'Shared Bathroom'),
(7, 'Kitchen Access'),
(8, 'Laundry Room'),
(9, 'Heating'),
(10, 'Air Conditioning'),
(11, 'Fridge'),
(12, 'Microwave'),
(13, 'Oven'),
(14, 'Study Area'),
(15, 'Common Room'),
(16, 'TV'),
(17, 'Lamp'),
(18, 'Shelving Unit'),
(19, 'Double Bed'),
(20, 'Single Bed'),
(21, 'Fire Alarm'),
(22, 'Balcony'),
(23, 'Garden Access'),
(24, 'Bike Storage'),
(25, '24/7 Security'),
(26, 'Carpet Flooring'),
(27, 'Hardwood Flooring'),
(28, 'Lift Access'),
(29, 'Soundproofing'),
(30, 'Outdoor Seating');

-- --------------------------------------------------------

--
-- Table structure for table `Payments`
--

CREATE TABLE `Payments` (
  `payment_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  `payment_date` date NOT NULL,
  `method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Payments`
--

INSERT INTO `Payments` (`payment_id`, `booking_id`, `amount`, `payment_date`, `method`) VALUES
(1, 1, 500.00, '2024-02-01', 'Card'),
(2, 1, 300.00, '2024-03-15', 'Card'),
(3, 2, 450.00, '2024-02-15', 'Online'),
(4, 3, 600.00, '2024-04-01', 'Card'),
(5, 4, 750.00, '2023-10-10', 'Cash'),
(6, 5, 400.00, '2024-05-12', 'Card'),
(7, 6, 250.00, '2024-02-01', 'Online'),
(8, 7, 550.00, '2024-03-03', 'Card'),
(9, 8, 800.00, '2023-11-11', 'Card'),
(10, 9, 620.00, '2024-04-15', 'Online'),
(11, 10, 450.00, '2024-03-01', 'Card'),
(12, 11, 230.00, '2024-01-20', 'Cash'),
(13, 12, 500.00, '2024-05-05', 'Card'),
(14, 13, 900.00, '2023-10-15', 'Online'),
(15, 14, 520.00, '2024-02-11', 'Card'),
(16, 15, 610.00, '2024-04-02', 'Card'),
(17, 16, 700.00, '2024-01-30', 'Online'),
(18, 17, 850.00, '2023-10-20', 'Card'),
(19, 18, 240.00, '2024-02-18', 'Cash'),
(20, 19, 680.00, '2024-03-22', 'Card'),
(21, 20, 520.00, '2024-05-01', 'Online'),
(22, 21, 730.00, '2023-10-25', 'Card'),
(23, 22, 260.00, '2024-01-28', 'Cash'),
(24, 23, 540.00, '2024-03-10', 'Card'),
(25, 24, 780.00, '2023-11-18', 'Online'),
(26, 25, 600.00, '2024-04-10', 'Card'),
(27, 26, 900.00, '2024-05-12', 'Card'),
(28, 27, 475.00, '2024-02-22', 'Online'),
(29, 28, 350.00, '2024-01-12', 'Cash'),
(30, 29, 650.00, '2024-03-15', 'Card'),
(31, 30, 720.00, '2024-04-05', 'Card'),
(32, 5, 200.00, '2024-06-01', 'Cash'),
(33, 8, 150.00, '2024-01-05', 'Cash'),
(34, 12, 250.00, '2024-06-20', 'Online'),
(35, 14, 150.00, '2024-03-05', 'Cash'),
(36, 17, 220.00, '2024-01-10', 'Online'),
(37, 23, 180.00, '2024-06-15', 'Card'),
(38, 24, 300.00, '2024-02-14', 'Cash'),
(39, 27, 150.00, '2024-03-01', 'Online'),
(40, 30, 180.00, '2024-06-01', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_number` varchar(10) NOT NULL,
  `roomtype_id` int(11) NOT NULL,
  `weekly_rent` decimal(7,2) NOT NULL,
  `occupancy_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_number`, `roomtype_id`, `weekly_rent`, `occupancy_status`) VALUES
(91, 'A101', 1, 120.00, 'Available'),
(92, 'A102', 2, 150.00, 'Occupied'),
(93, 'A103', 3, 180.00, 'Available'),
(94, 'A104', 4, 200.00, 'Available'),
(95, 'A105', 5, 100.00, 'Occupied'),
(96, 'A201', 6, 140.00, 'Available'),
(97, 'A202', 7, 220.00, 'Occupied'),
(98, 'A203', 8, 180.00, 'Available'),
(99, 'A204', 9, 160.00, 'Available'),
(100, 'A205', 10, 250.00, 'Occupied'),
(101, 'B101', 11, 170.00, 'Available'),
(102, 'B102', 12, 175.00, 'Occupied'),
(103, 'B103', 13, 90.00, 'Available'),
(104, 'B104', 14, 130.00, 'Available'),
(105, 'B105', 15, 165.00, 'Occupied'),
(106, 'B201', 16, 155.00, 'Available'),
(107, 'B202', 17, 300.00, 'Available'),
(108, 'B203', 18, 110.00, 'Occupied'),
(109, 'B204', 19, 210.00, 'Available'),
(110, 'B205', 20, 145.00, 'Occupied'),
(111, 'C101', 21, 190.00, 'Available'),
(112, 'C102', 22, 125.00, 'Occupied'),
(113, 'C103', 23, 140.00, 'Available'),
(114, 'C104', 24, 135.00, 'Available'),
(115, 'C105', 25, 195.00, 'Occupied'),
(116, 'C201', 26, 280.00, 'Available'),
(117, 'C202', 27, 130.00, 'Available'),
(118, 'C203', 28, 100.00, 'Occupied'),
(119, 'C204', 29, 320.00, 'Available'),
(120, 'C205', 30, 115.00, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `room_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`room_id`, `facility_id`) VALUES
(1, 1),
(1, 5),
(1, 10),
(2, 1),
(2, 3),
(2, 7),
(3, 2),
(3, 4),
(3, 6),
(4, 5),
(4, 8),
(5, 1),
(5, 6),
(6, 2),
(6, 9),
(7, 7),
(7, 8),
(8, 3),
(8, 4),
(9, 6),
(9, 11),
(10, 12),
(10, 13),
(11, 1),
(11, 14),
(12, 3),
(12, 15),
(13, 2),
(13, 5),
(14, 9),
(14, 16),
(15, 4),
(15, 7),
(16, 8),
(16, 11),
(17, 10),
(17, 18),
(18, 6),
(18, 19),
(19, 20),
(20, 21),
(21, 22),
(22, 23),
(23, 24);

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `roomtype_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `weekly_rent` decimal(7,2) NOT NULL,
  `features` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`roomtype_id`, `type`, `weekly_rent`, `features`) VALUES
(1, 'Standard', 120.00, 'Shared bathroom, basic furniture'),
(2, 'En-suite', 150.00, 'Private bathroom, study desk'),
(3, 'Deluxe', 180.00, 'Large room, ensuite, premium furniture'),
(4, 'Premium', 200.00, 'Extra large room with sofa'),
(5, 'Budget', 100.00, 'Small room, minimal furniture'),
(6, 'Twin Room', 140.00, 'Two single beds, shared occupancy'),
(7, 'Studio', 220.00, 'Private kitchen and bathroom'),
(8, 'Shared Studio', 180.00, 'Shared kitchen, private bathroom'),
(9, 'Accessible Room', 160.00, 'Wheelchair accessible layout'),
(10, 'Top Floor Suite', 250.00, 'Top-floor room with great views'),
(11, 'Garden View', 170.00, 'Room facing garden, large windows'),
(12, 'City View', 175.00, 'Room overlooking the city skyline'),
(13, 'Economy Single', 90.00, 'Small single room'),
(14, 'Economy Double', 130.00, 'Affordable double room'),
(15, 'Modern Ensuite', 165.00, 'Newly refurbished ensuite'),
(16, 'Retro Ensuite', 155.00, 'Older style ensuite room'),
(17, 'Luxury Suite', 300.00, 'High-end suite with premium features'),
(18, 'Attic Room', 110.00, 'Small cosy attic room'),
(19, 'Loft Studio', 210.00, 'Loft-style modern studio'),
(20, 'Compact Ensuite', 145.00, 'Compact ensuite room'),
(21, 'Large Ensuite', 190.00, 'Large ensuite room'),
(22, 'Quiet Room', 125.00, 'Noise insulated room'),
(23, 'Courtyard Room', 140.00, 'Room facing internal courtyard'),
(24, 'Shared Ensuite', 135.00, 'Shared ensuite bathroom'),
(25, 'Mezzanine Room', 195.00, 'Room with mezzanine bed'),
(26, 'Penthouse Studio', 280.00, 'Luxury penthouse studio'),
(27, 'Ground Floor Room', 130.00, 'Easy ground floor access'),
(28, 'Basement Room', 100.00, 'Lower ground room, cheaper'),
(29, 'Executive Suite', 320.00, 'High-end executive suite'),
(30, 'Minimalist Room', 115.00, 'Simple modern furniture'),
(31, 'Standard', 120.00, 'Shared bathroom, basic furniture'),
(32, 'En-suite', 150.00, 'Private bathroom, study desk'),
(33, 'Deluxe', 180.00, 'Large room, ensuite, premium furniture'),
(34, 'Premium', 200.00, 'Extra large room with sofa'),
(35, 'Budget', 100.00, 'Small room, minimal furniture'),
(36, 'Twin Room', 140.00, 'Two single beds, shared occupancy'),
(37, 'Studio', 220.00, 'Private kitchen and bathroom'),
(38, 'Shared Studio', 180.00, 'Shared kitchen, private bathroom'),
(39, 'Accessible Room', 160.00, 'Wheelchair accessible layout'),
(40, 'Top Floor Suite', 250.00, 'Top-floor room with great views'),
(41, 'Garden View', 170.00, 'Room facing garden, large windows'),
(42, 'City View', 175.00, 'Room overlooking the city skyline'),
(43, 'Economy Single', 90.00, 'Small single room'),
(44, 'Economy Double', 130.00, 'Affordable double room'),
(45, 'Modern Ensuite', 165.00, 'Newly refurbished ensuite'),
(46, 'Retro Ensuite', 155.00, 'Older style ensuite room'),
(47, 'Luxury Suite', 300.00, 'High-end suite with premium features'),
(48, 'Attic Room', 110.00, 'Small cosy attic room'),
(49, 'Loft Studio', 210.00, 'Loft-style modern studio'),
(50, 'Compact Ensuite', 145.00, 'Compact ensuite room'),
(51, 'Large Ensuite', 190.00, 'Large ensuite room'),
(52, 'Quiet Room', 125.00, 'Noise insulated room'),
(53, 'Courtyard Room', 140.00, 'Room facing internal courtyard'),
(54, 'Shared Ensuite', 135.00, 'Shared ensuite bathroom'),
(55, 'Mezzanine Room', 195.00, 'Room with mezzanine bed'),
(56, 'Penthouse Studio', 280.00, 'Luxury penthouse studio'),
(57, 'Ground Floor Room', 130.00, 'Easy ground floor access'),
(58, 'Basement Room', 100.00, 'Lower ground room, cheaper'),
(59, 'Executive Suite', 320.00, 'High-end executive suite'),
(60, 'Minimalist Room', 115.00, 'Simple modern furniture');

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`student_id`, `first_name`, `last_name`, `dob`, `nationality`, `email`, `address`, `phone`) VALUES
(1, 'Emma', 'Lewis', '2003-04-12', 'British', 'emma1@uni.ac.uk', '12 King Street, London', '07100000001'),
(2, 'Noah', 'Patel', '2002-11-08', 'Indian', 'noah2@uni.ac.uk', '22 Maple Road, Manchester', '07100000002'),
(3, 'Aisha', 'Khan', '2003-03-20', 'Pakistani', 'aisha3@uni.ac.uk', '5 Oak Avenue, Birmingham', '07100000003'),
(4, 'Lucas', 'Brown', '2004-01-15', 'American', 'lucas4@uni.ac.uk', '18 River View, Leeds', '07100000004'),
(5, 'Olivia', 'Smith', '2003-06-18', 'Canadian', 'olivia5@uni.ac.uk', '44 Park Lane, Bristol', '07100000005'),
(6, 'Liam', 'Johnson', '2002-10-02', 'Irish', 'liam6@uni.ac.uk', '9 West Street, Liverpool', '07100000006'),
(7, 'Sophia', 'Wilson', '2003-09-14', 'Australian', 'sophia7@uni.ac.uk', '2 Ash Close, Newcastle', '07100000007'),
(8, 'James', 'Taylor', '2003-02-11', 'British', 'james8@uni.ac.uk', '77 Bridge Road, Sheffield', '07100000008'),
(9, 'Amelia', 'Walker', '2003-07-09', 'German', 'amelia9@uni.ac.uk', '15 Cherry Street, Nottingham', '07100000009'),
(10, 'Ethan', 'Hughes', '2002-12-30', 'Irish', 'ethan10@uni.ac.uk', '31 Highfield Road, Coventry', '07100000010'),
(11, 'Chloe', 'Edwards', '2003-03-01', 'South African', 'chloe11@uni.ac.uk', '53 Meadow Lane, Leicester', '07100000011'),
(12, 'Mia', 'Green', '2004-05-23', 'Nigerian', 'mia12@uni.ac.uk', '6 Hillcrest Drive, Derby', '07100000012'),
(13, 'Isla', 'Adams', '2003-08-13', 'Scottish', 'isla13@uni.ac.uk', '27 Victoria Road, Brighton', '07100000013'),
(14, 'Jacob', 'Foster', '2003-11-20', 'Welsh', 'jacob14@uni.ac.uk', '89 Church Street, Cardiff', '07100000014'),
(15, 'Freya', 'Morgan', '2003-04-02', 'Swedish', 'freya15@uni.ac.uk', '12 Pine Crescent, Southampton', '07100000015'),
(16, 'Leo', 'Bell', '2004-02-10', 'Chinese', 'leo16@uni.ac.uk', '41 Orchard Way, Plymouth', '07100000016'),
(17, 'Harper', 'Young', '2003-06-28', 'French', 'harper17@uni.ac.uk', '3 Rose Court, Hull', '07100000017'),
(18, 'Evelyn', 'Ward', '2003-09-25', 'Polish', 'evelyn18@uni.ac.uk', '57 Elm Road, Bradford', '07100000018'),
(19, 'Aria', 'Hill', '2003-01-04', 'Spanish', 'aria19@uni.ac.uk', '20 Cedar Street, Stoke-on-Trent', '07100000019'),
(20, 'Maya', 'Campbell', '2004-03-19', 'Egyptian', 'maya20@uni.ac.uk', '11 Ivy Close, Wolverhampton', '07100000020'),
(21, 'Harrison', 'Scott', '2003-11-17', 'Kenyan', 'harrison21@uni.ac.uk', '36 Brook Street, York', '07100000021'),
(22, 'Ella', 'Mitchell', '2003-10-10', 'Turkish', 'ella22@uni.ac.uk', '8 Laurel Road, Preston', '07100000022'),
(23, 'Ryan', 'Carter', '2004-04-14', 'Filipino', 'ryan23@uni.ac.uk', '29 Willow Drive, Reading', '07100000023'),
(24, 'Abigail', 'Iqbal', '2003-08-08', 'Bangladeshi', 'abigail24@uni.ac.uk', '13 Regent Street, Milton Keynes', '07100000024'),
(25, 'Sebastian', 'James', '2002-07-12', 'Brazilian', 'sebastian25@uni.ac.uk', '66 Hawthorn Road, Portsmouth', '07100000025'),
(26, 'Zara', 'Hayes', '2003-05-05', 'Arab', 'zara26@uni.ac.uk', '100 Manor Street, Swansea', '07100000026'),
(27, 'David', 'Evans', '2003-02-18', 'Greek', 'david27@uni.ac.uk', '22 Station Road, Bolton', '07100000027'),
(28, 'Holly', 'Richards', '2004-01-11', 'Italian', 'holly28@uni.ac.uk', '3 Birch Grove, Luton', '07100000028'),
(29, 'Nadia', 'Ali', '2003-06-16', 'Somali', 'nadia29@uni.ac.uk', '74 North Road, Dundee', '07100000029'),
(30, 'Tyler', 'Grant', '2003-07-27', 'Jamaican', 'tyler30@uni.ac.uk', '5 Sycamore Lane, Aberdeen', '07100000030'),
(31, 'Emma', 'Lewis', '2003-04-12', 'British', 'emma1@uni.ac.uk', '12 King Street, London', '07100000001'),
(32, 'Noah', 'Patel', '2002-11-08', 'Indian', 'noah2@uni.ac.uk', '22 Maple Road, Manchester', '07100000002'),
(33, 'Aisha', 'Khan', '2003-03-20', 'Pakistani', 'aisha3@uni.ac.uk', '5 Oak Avenue, Birmingham', '07100000003'),
(34, 'Lucas', 'Brown', '2004-01-15', 'American', 'lucas4@uni.ac.uk', '18 River View, Leeds', '07100000004'),
(35, 'Olivia', 'Smith', '2003-06-18', 'Canadian', 'olivia5@uni.ac.uk', '44 Park Lane, Bristol', '07100000005'),
(36, 'Liam', 'Johnson', '2002-10-02', 'Irish', 'liam6@uni.ac.uk', '9 West Street, Liverpool', '07100000006'),
(37, 'Sophia', 'Wilson', '2003-09-14', 'Australian', 'sophia7@uni.ac.uk', '2 Ash Close, Newcastle', '07100000007'),
(38, 'James', 'Taylor', '2003-02-11', 'British', 'james8@uni.ac.uk', '77 Bridge Road, Sheffield', '07100000008'),
(39, 'Amelia', 'Walker', '2003-07-09', 'German', 'amelia9@uni.ac.uk', '15 Cherry Street, Nottingham', '07100000009'),
(40, 'Ethan', 'Hughes', '2002-12-30', 'Irish', 'ethan10@uni.ac.uk', '31 Highfield Road, Coventry', '07100000010'),
(41, 'Chloe', 'Edwards', '2003-03-01', 'South African', 'chloe11@uni.ac.uk', '53 Meadow Lane, Leicester', '07100000011'),
(42, 'Mia', 'Green', '2004-05-23', 'Nigerian', 'mia12@uni.ac.uk', '6 Hillcrest Drive, Derby', '07100000012'),
(43, 'Isla', 'Adams', '2003-08-13', 'Scottish', 'isla13@uni.ac.uk', '27 Victoria Road, Brighton', '07100000013'),
(44, 'Jacob', 'Foster', '2003-11-20', 'Welsh', 'jacob14@uni.ac.uk', '89 Church Street, Cardiff', '07100000014'),
(45, 'Freya', 'Morgan', '2003-04-02', 'Swedish', 'freya15@uni.ac.uk', '12 Pine Crescent, Southampton', '07100000015'),
(46, 'Leo', 'Bell', '2004-02-10', 'Chinese', 'leo16@uni.ac.uk', '41 Orchard Way, Plymouth', '07100000016'),
(47, 'Harper', 'Young', '2003-06-28', 'French', 'harper17@uni.ac.uk', '3 Rose Court, Hull', '07100000017'),
(48, 'Evelyn', 'Ward', '2003-09-25', 'Polish', 'evelyn18@uni.ac.uk', '57 Elm Road, Bradford', '07100000018'),
(49, 'Aria', 'Hill', '2003-01-04', 'Spanish', 'aria19@uni.ac.uk', '20 Cedar Street, Stoke-on-Trent', '07100000019'),
(50, 'Maya', 'Campbell', '2004-03-19', 'Egyptian', 'maya20@uni.ac.uk', '11 Ivy Close, Wolverhampton', '07100000020'),
(51, 'Harrison', 'Scott', '2003-11-17', 'Kenyan', 'harrison21@uni.ac.uk', '36 Brook Street, York', '07100000021'),
(52, 'Ella', 'Mitchell', '2003-10-10', 'Turkish', 'ella22@uni.ac.uk', '8 Laurel Road, Preston', '07100000022'),
(53, 'Ryan', 'Carter', '2004-04-14', 'Filipino', 'ryan23@uni.ac.uk', '29 Willow Drive, Reading', '07100000023'),
(54, 'Abigail', 'Iqbal', '2003-08-08', 'Bangladeshi', 'abigail24@uni.ac.uk', '13 Regent Street, Milton Keynes', '07100000024'),
(55, 'Sebastian', 'James', '2002-07-12', 'Brazilian', 'sebastian25@uni.ac.uk', '66 Hawthorn Road, Portsmouth', '07100000025'),
(56, 'Zara', 'Hayes', '2003-05-05', 'Arab', 'zara26@uni.ac.uk', '100 Manor Street, Swansea', '07100000026'),
(57, 'David', 'Evans', '2003-02-18', 'Greek', 'david27@uni.ac.uk', '22 Station Road, Bolton', '07100000027'),
(58, 'Holly', 'Richards', '2004-01-11', 'Italian', 'holly28@uni.ac.uk', '3 Birch Grove, Luton', '07100000028'),
(59, 'Nadia', 'Ali', '2003-06-16', 'Somali', 'nadia29@uni.ac.uk', '74 North Road, Dundee', '07100000029'),
(60, 'Tyler', 'Grant', '2003-07-27', 'Jamaican', 'tyler30@uni.ac.uk', '5 Sycamore Lane, Aberdeen', '07100000030');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`facility_id`);

--
-- Indexes for table `Payments`
--
ALTER TABLE `Payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `roomtype_id` (`roomtype_id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`room_id`,`facility_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`roomtype_id`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Payments`
--
ALTER TABLE `Payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `roomtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `Students`
--
ALTER TABLE `Students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`);

--
-- Constraints for table `Payments`
--
ALTER TABLE `Payments`
  ADD CONSTRAINT `Payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `Payments` (`payment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

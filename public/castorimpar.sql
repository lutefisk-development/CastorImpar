-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 07:07 PM
-- Server version: 5.6.37
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `castorimpar`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked_seats`
--

CREATE TABLE IF NOT EXISTS `booked_seats` (
  `id` int(11) unsigned NOT NULL,
  `price_id` int(11) NOT NULL,
  `seatnumber` int(11) NOT NULL,
  `salon_id` int(11) NOT NULL,
  `row_nr` int(11) NOT NULL,
  `bookings_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booked_seats`
--

INSERT INTO `booked_seats` (`id`, `price_id`, `seatnumber`, `salon_id`, `row_nr`, `bookings_id`) VALUES
(22, 85, 5, 2, 4, 20),
(23, 75, 1, 1, 1, 22),
(24, 85, 3, 1, 1, 23),
(25, 75, 4, 1, 3, 24),
(26, 85, 5, 2, 3, 25),
(27, 75, 4, 1, 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(11) unsigned NOT NULL,
  `schedulebooking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `schedulebooking_id`, `user_id`) VALUES
(1, 12, NULL),
(20, 6, NULL),
(21, 7, NULL),
(22, 9, NULL),
(23, 3, NULL),
(24, 3, NULL),
(25, 7, NULL),
(26, 3, NULL),
(27, 12, NULL),
(28, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE IF NOT EXISTS `cinema` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `number_of_theaters` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`id`, `name`, `city`, `number_of_theaters`) VALUES
(1, 'Filmvisarna Bergahallen', 'Småstad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` decimal(50,0) NOT NULL,
  `points` int(10) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstname`, `lastname`, `email`, `phone`, `points`, `password`, `image`) VALUES
(2, 'hejsann', 'hej', 'hejhej@hej.se', 9999999999, 0, '$2y$10$vhet9iuDLgtmKq4rOsHuqei5Tl6c.FaRo9lMVJFWq.Fsv3MQysnhK', ''),
(3, 'test', 'testare', 'testy@test.se', 888888888, 0, '$2y$10$Bp.lxu8PcbCErLAw0SSaHOMAgHGhKkvL4EY1Hubn7mVoQumGIoTf.', ''),
(4, 'ee', 'ee', 'ee@ee.ee', 7777, 0, '$2y$10$I/QDAy0of.9N6NWmlZdf3udx74nuW5jb5mDPxvSYUr6LwayY4DLBW', ''),
(5, 'per', 'hanson', 'per@hej.se', 789, 0, '$2y$10$2ncIRAGAmBvS.PMn9DTOwuYg5.mUL93EQB9gvxUhlcVH9eE/g84rK', ''),
(6, 'test', 'test', 'hejhej@hej.se', 222, 0, '$2y$10$gL8VOoT1DI3xupcmsQ/2gee8hz/n0KCWPbdxG0ikalXF3leS.sgqK', ''),
(7, '1', '1', 'j@j.se', 222, 0, '$2y$10$Qt9BiIRxpdOwvglYblmcSez7sKC19ihYcySNV9BtzlT3glHMc1vWy', '');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `actor` varchar(255) NOT NULL DEFAULT '',
  `play_time` time NOT NULL,
  `genre` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `director` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `pictures` varchar(11) NOT NULL DEFAULT '',
  `production_year` int(11) NOT NULL,
  `trailer` varchar(255) NOT NULL DEFAULT '',
  `show_dates` varchar(255) NOT NULL DEFAULT '',
  `images` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `actor`, `play_time`, `genre`, `description`, `director`, `language`, `subtitle`, `pictures`, `production_year`, `trailer`, `show_dates`, `images`) VALUES
(1, 'Call me by your name', 'Armie Hammer, Timothée Chalamet, Michael Stuhlbarg', '01:32:00', 'Drama', '<p>Filmen utspelas i norra Italien sommaren 1983. En ung amerikansk-italienare blir förälskad i en amerikansk student som kommer för att studera och bo hos hans familj.</p><p>Tillsammans upplever de en oförglömlig sommar - full av musik, mat och kärlek - som för evigt kommer att förändra dem.</p>', 'Luca Guadagnino', 'engelska', 'svenska', 'Call-me-by-', 2017, 'Z9AYPxH5NTM', '', 'Call-me-by-your-name.jpg'),
(2, 'Mera monster, Alfons', 'Animerat, Berättarröst - Jonas Karlsson', '00:40:00', 'Barnfilm', '<p>Tre historier om Alfons Åberg som bor med sin pappa och katten Pussel. Ibland är Alfons barnslig, som när han vägrar äta middag, men ibland är han stor, som när han är barnvakt åt Småtting.</p>', '', 'Svenska', '-', 'Alfons.jpg', 2014, 'yxWia7I8G9c', '', 'Alfons.jpg'),
(3, 'Gräns', 'Eva Melander, Eero Milonoff, Viktor Åkerblom', '01:08:00', 'Thriller', '<p>Handlingen i Gräns kretsar kring tullpolisen Tina, som har ett sjätte sinne när det gäller att peka ut smugglare. Det är nästan som om hon kan lukta sig till när någon försöker dölja något. Ryktet om hennes skicklighet sprider sig inom poliskåren och hon anlitas för att hitta bevis mot en liga med omfattande kriminell verksamhet. Men när den mystiske Vore kliver av färjan så tvekar hon för första gången på sina känslor.</p><p>Tina anar att Vore döljer något, men kan inte sätta fingret på vad. De attraheras av varandra, men när hon lär känna honom inser hon samtidigt att hela hennes liv är baserat på en enda stor lögn. Precis som Vore så hör Tina inte hemma i den här världen. Nu måste hon välja: fortsätta med sin livslögn eller omfamna den skrämmande sanningen om vem hon egentligen är.</p>', 'Ali Abbassi', 'Svenska', 'Svenska', '', 2018, 'y6NljX3X3XQ', '', 'Border.jpg'),
(4, 'Destroyer', 'Nicole Kidman, Toby Kebbell, Tatiana Maslany, Sebastian Stan, Scoot McNairy, Bradley Whitford, Toby Huss, James Jordan, Beau Knapp, Jade Pettyjohn', '01:23:00', 'Action', '<p>LAPD-polisen Erin Bell har påbörjat en moralisk och existentiell resa för att göra upp med sitt mörka förflutna. Som rookie placerades hon undercover med ett kultliknande gäng i den kaliforniska öknen. Ett uppdrag med en tragisk utgång som starkt påverkat hennes liv. När ledaren av det gänget åter dyker upp flera år senare måste hon arbeta sig tillbaka genom de återstående medlemmarna, och sin egen historia med dem, för att äntligen kunna konfrontera de demoner som förföljt henne i alla år.</p>', 'Karyn Kusama', 'Engelska', 'Svenska', '', 2018, 'cjoh3B1OPgU', '', 'Destroyer.jpg'),
(5, 'Aquaman', 'Jason Momoa, Amber Heard, Willem Dafoe, Patrick Wilson, Dolf Lundgren, Yahya Abdul-Mateen II, Nicole Kidman', '01:43:00', 'Action', '<p>Halvmänniskan och halvatlanten Arthur Curry gör sitt livs resa ? en resa som inte bara tvingar honom att möta sitt sanna jag, utan också upptäcka om han är värdig det han föddes till: en kung. Från regissören James Wan kommer nu det actionspäckade och visuellt storslagna äventyret Aquaman med Jason Momoa i huvudrollen.</p>', 'James Wan', 'Engelska', 'Svenska', '', 2018, 'WDkg3h8PCVU', '', 'Aquaman.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(11) unsigned NOT NULL,
  `price` decimal(11,0) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `price`, `name`) VALUES
(1, 85, 'standard'),
(2, 75, 'pensioner'),
(3, 65, 'barn');

-- --------------------------------------------------------

--
-- Table structure for table `salons`
--

CREATE TABLE IF NOT EXISTS `salons` (
  `id` int(11) unsigned NOT NULL,
  `salon_name` varchar(255) DEFAULT NULL,
  `number_of_seats` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salons`
--

INSERT INTO `salons` (`id`, `salon_name`, `number_of_seats`) VALUES
(1, 'lilla_salongen', '55'),
(2, 'stora salongen', '81');

-- --------------------------------------------------------

--
-- Table structure for table `salon_row`
--

CREATE TABLE IF NOT EXISTS `salon_row` (
  `id` int(11) unsigned NOT NULL,
  `salon_id` int(11) DEFAULT NULL,
  `row_number` int(11) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salon_row`
--

INSERT INTO `salon_row` (`id`, `salon_id`, `row_number`, `seats`) VALUES
(1, 2, 1, 8),
(2, 2, 2, 9),
(3, 2, 3, 10),
(4, 2, 4, 10),
(5, 2, 5, 10),
(6, 2, 6, 10),
(7, 2, 7, 12),
(8, 2, 8, 12),
(9, 1, 1, 6),
(10, 1, 2, 8),
(11, 1, 3, 9),
(12, 1, 4, 10),
(13, 1, 5, 10),
(14, 1, 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) unsigned NOT NULL,
  `film_id` varchar(255) NOT NULL DEFAULT '',
  `salon_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `film_id`, `salon_id`, `date_time`) VALUES
(3, '1', 1, '2019-02-01 18:00:00'),
(4, '1', 1, '2019-02-03 22:00:00'),
(5, '1', 1, '2019-02-05 20:20:00'),
(6, '2', 2, '2019-02-01 14:15:00'),
(7, '2', 2, '2019-02-02 13:00:00'),
(8, '2', 2, '2019-02-03 15:20:00'),
(9, '3', 1, '2019-02-02 20:20:00'),
(10, '3', 1, '2019-02-04 21:15:00'),
(11, '3', 1, '2019-02-06 19:15:00'),
(12, '4', 2, '2019-02-02 20:00:00'),
(13, '4', 2, '2019-02-03 21:00:00'),
(14, '4', 2, '2019-02-05 19:00:00'),
(15, '5', 1, '2019-02-03 18:10:00'),
(16, '5', 2, '2019-02-04 20:15:00'),
(17, '5', 2, '2019-02-06 21:00:00'),
(18, '1', 1, '2019-02-07 18:00:00'),
(19, '1', 1, '2019-02-09 22:00:00'),
(20, '1', 1, '2019-02-11 20:20:00'),
(21, '2', 2, '2019-02-07 14:15:00'),
(22, '2', 2, '2019-02-08 13:00:00'),
(23, '2', 2, '2019-02-09 15:20:00'),
(24, '3', 1, '2019-02-08 20:20:00'),
(25, '3', 1, '2019-02-10 21:15:00'),
(26, '3', 1, '2019-02-12 19:15:00'),
(27, '4', 2, '2019-02-08 20:00:00'),
(28, '4', 2, '2019-02-09 21:00:00'),
(29, '4', 2, '2019-02-11 19:00:00'),
(30, '5', 1, '2019-02-09 18:10:00'),
(31, '5', 2, '2019-02-10 20:15:00'),
(32, '5', 2, '2019-02-12 21:00:00'),
(33, '1', 1, '2019-02-15 18:00:00'),
(34, '1', 1, '2019-02-18 22:00:00'),
(35, '1', 1, '2019-02-20 20:20:00'),
(36, '2', 2, '2019-02-15 14:15:00'),
(37, '2', 2, '2019-02-16 13:00:00'),
(38, '2', 2, '2019-02-18 15:20:00'),
(39, '3', 1, '2019-02-16 20:20:00'),
(40, '3', 1, '2019-02-19 21:15:00'),
(41, '3', 1, '2019-02-21 19:15:00'),
(42, '4', 2, '2019-02-16 20:00:00'),
(43, '4', 2, '2019-02-18 21:00:00'),
(44, '4', 2, '2019-02-20 19:00:00'),
(45, '5', 1, '2019-02-18 18:10:00'),
(46, '5', 2, '2019-02-19 20:15:00'),
(47, '5', 2, '2019-02-21 21:00:00'),
(48, '1', 1, '2019-02-22 18:00:00'),
(49, '1', 1, '2019-02-24 22:00:00'),
(50, '1', 1, '2019-02-26 20:20:00'),
(51, '2', 2, '2019-02-22 14:15:00'),
(52, '2', 2, '2019-02-23 13:00:00'),
(53, '2', 2, '2019-02-24 15:20:00'),
(54, '3', 1, '2019-02-23 20:20:00'),
(55, '3', 1, '2019-02-25 21:15:00'),
(56, '3', 1, '2019-02-27 19:15:00'),
(57, '4', 2, '2019-02-23 20:00:00'),
(58, '4', 2, '2019-02-24 21:00:00'),
(59, '4', 2, '2019-02-26 19:00:00'),
(60, '5', 1, '2019-02-24 18:10:00'),
(61, '5', 2, '2019-02-25 20:15:00'),
(62, '5', 2, '2019-02-27 21:00:00'),
(63, '1', 1, '2019-02-28 18:00:00'),
(64, '1', 1, '2019-03-02 22:00:00'),
(65, '1', 1, '2019-03-04 20:20:00'),
(66, '2', 2, '2019-02-28 14:15:00'),
(67, '2', 2, '2019-03-01 13:00:00'),
(68, '2', 2, '2019-03-02 15:20:00'),
(69, '3', 1, '2019-03-01 20:20:00'),
(70, '3', 1, '2019-03-03 21:15:00'),
(71, '3', 1, '2019-03-05 19:15:00'),
(72, '4', 2, '2019-03-01 20:00:00'),
(73, '4', 2, '2019-03-02 21:00:00'),
(74, '4', 2, '2019-03-04 19:00:00'),
(75, '5', 1, '2019-03-02 18:10:00'),
(76, '5', 2, '2019-03-03 20:15:00'),
(77, '5', 2, '2019-03-05 21:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_seats`
--
ALTER TABLE `booked_seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salons`
--
ALTER TABLE `salons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_row`
--
ALTER TABLE `salon_row`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_seats`
--
ALTER TABLE `booked_seats`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `cinema`
--
ALTER TABLE `cinema`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salons`
--
ALTER TABLE `salons`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `salon_row`
--
ALTER TABLE `salon_row`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

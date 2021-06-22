-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 10:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add music', 7, 'add_music'),
(26, 'Can change music', 7, 'change_music'),
(27, 'Can delete music', 7, 'delete_music'),
(28, 'Can view music', 7, 'view_music'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add form', 9, 'add_form'),
(34, 'Can change form', 9, 'change_form'),
(35, 'Can delete form', 9, 'delete_form'),
(36, 'Can view form', 9, 'view_form'),
(37, 'Can add booking', 10, 'add_booking'),
(38, 'Can change booking', 10, 'change_booking'),
(39, 'Can delete booking', 10, 'delete_booking'),
(40, 'Can view booking', 10, 'view_booking'),
(41, 'Can add guitar', 11, 'add_guitar'),
(42, 'Can change guitar', 11, 'change_guitar'),
(43, 'Can delete guitar', 11, 'delete_guitar'),
(44, 'Can view guitar', 11, 'view_guitar'),
(45, 'Can add guitars', 12, 'add_guitars'),
(46, 'Can change guitars', 12, 'change_guitars'),
(47, 'Can delete guitars', 12, 'delete_guitars'),
(48, 'Can view guitars', 12, 'view_guitars'),
(49, 'Can add booking', 13, 'add_booking'),
(50, 'Can change booking', 13, 'change_booking'),
(51, 'Can delete booking', 13, 'delete_booking'),
(52, 'Can view booking', 13, 'view_booking'),
(53, 'Can add cart', 14, 'add_cart'),
(54, 'Can change cart', 14, 'change_cart'),
(55, 'Can delete cart', 14, 'delete_cart'),
(56, 'Can view cart', 14, 'view_cart'),
(57, 'Can add drum', 15, 'add_drum'),
(58, 'Can change drum', 15, 'change_drum'),
(59, 'Can delete drum', 15, 'delete_drum'),
(60, 'Can view drum', 15, 'view_drum'),
(61, 'Can add book', 16, 'add_book'),
(62, 'Can change book', 16, 'change_book'),
(63, 'Can delete book', 16, 'delete_book'),
(64, 'Can view book', 16, 'view_book'),
(65, 'Can add each', 17, 'add_each'),
(66, 'Can change each', 17, 'change_each'),
(67, 'Can delete each', 17, 'delete_each'),
(68, 'Can view each', 17, 'view_each'),
(69, 'Can add contact', 18, 'add_contact'),
(70, 'Can change contact', 18, 'change_contact'),
(71, 'Can delete contact', 18, 'delete_contact'),
(72, 'Can view contact', 18, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$180000$BCPZq0cYujcj$uQ6af1Y2GOTjtkd8fDR/gGOPhEXi+I7PkpIsYWosMUQ=', '2020-02-16 07:05:40.093176', 1, 'sonam', '', '', 'xresthasonam@gmail.com', 1, 1, '2020-01-21 12:27:55.769363'),
(8, 'pbkdf2_sha256$180000$PpMATib2IbRn$7qaTprH6S6CzYTY8TtAaSD9mH8S61tVd4d9aBFZuT9c=', '2020-02-10 05:09:13.154841', 0, 'bibek@1', 'Bibek', 'Shrestha', 'bibek@gmail.com', 0, 1, '2020-02-06 11:50:41.032945'),
(24, 'pbkdf2_sha256$180000$lfgRdcI5V8Dh$JbZdGwZnY7TWvkaSOTgBsBjcmraNUh7S5dZatw7gQ+I=', '2020-02-16 09:17:36.335632', 0, 'sonam@123', 'sonam', 'shrestha', 'son@gmail.com', 0, 1, '2020-02-16 09:13:51.673226');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookings_booking`
--

CREATE TABLE `bookings_booking` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings_booking`
--

INSERT INTO `bookings_booking` (`id`, `date`, `product_id`, `user_id`) VALUES
(6, '2020-02-10', 7, 8),
(11, '2020-02-13', 4, 2),
(15, '2020-02-16', 5, 2),
(16, '2020-02-16', 8, 2),
(18, '2020-02-16', 7, 24);

-- --------------------------------------------------------

--
-- Table structure for table `books_book`
--

CREATE TABLE `books_book` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_book`
--

INSERT INTO `books_book` (`id`, `date`, `product_id`, `user_id`) VALUES
(3, '2020-02-08', 2, 8),
(4, '2020-02-09', 2, 2),
(5, '2020-02-10', 2, 8),
(21, '2020-02-16', 2, 2),
(22, '2020-02-16', 5, 2),
(23, '2020-02-16', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact`
--

CREATE TABLE `contact_contact` (
  `id` int(11) NOT NULL,
  `Full` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_contact`
--

INSERT INTO `contact_contact` (`id`, `Full`, `Email`, `subject`, `message`) VALUES
(1, 'Salon', 'xresthasonam@gmail.com', 'www', 'qwwwwwwwwwwwwwwwww'),
(2, 'Salon', 'sanisha.tmg', 'ads', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(3, 'sonam', 'shrestha', 'asd', 'asdasdasd'),
(4, 'Salon', 'j', 'j', 'j'),
(5, 'goku', 'goku@ymail.com', 'low quality services', 'This company provides very late deleveries.'),
(6, 'sonam shrestha', 'sanisha.tmg', 'nasdasd', 'asddddddddddddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-24 05:44:03.909377', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 8, 2),
(2, '2020-01-24 06:01:13.569554', '1', 'Product object (1)', 2, '[]', 8, 2),
(3, '2020-01-24 06:01:25.171588', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 8, 2),
(4, '2020-01-30 07:19:57.270621', '1', 'Guitar object (1)', 1, '[{\"added\": {}}]', 11, 2),
(5, '2020-02-01 07:31:09.172092', '2', 'Guitar object (2)', 1, '[{\"added\": {}}]', 11, 2),
(6, '2020-02-01 07:31:28.671645', '3', 'Guitar object (3)', 1, '[{\"added\": {}}]', 11, 2),
(7, '2020-02-01 07:59:14.911950', '1', 'Guitars object (1)', 1, '[{\"added\": {}}]', 12, 2),
(8, '2020-02-01 08:03:38.229880', '2', 'Guitars object (2)', 1, '[{\"added\": {}}]', 12, 2),
(9, '2020-02-01 08:03:55.451213', '3', 'Guitars object (3)', 1, '[{\"added\": {}}]', 12, 2),
(10, '2020-02-02 11:59:04.317755', '3', 'Guitars object (3)', 3, '', 12, 2),
(11, '2020-02-02 11:59:04.612588', '2', 'Guitars object (2)', 3, '', 12, 2),
(12, '2020-02-02 11:59:04.730519', '1', 'Guitars object (1)', 3, '', 12, 2),
(13, '2020-02-02 12:03:23.824427', '4', 'Guitars object (4)', 1, '[{\"added\": {}}]', 12, 2),
(14, '2020-02-02 12:06:00.777196', '5', 'Guitars object (5)', 1, '[{\"added\": {}}]', 12, 2),
(15, '2020-02-02 12:07:44.959323', '6', 'Guitars object (6)', 1, '[{\"added\": {}}]', 12, 2),
(16, '2020-02-02 12:17:15.113405', '7', 'Guitars object (7)', 1, '[{\"added\": {}}]', 12, 2),
(17, '2020-02-02 12:19:23.738366', '8', 'Guitars object (8)', 1, '[{\"added\": {}}]', 12, 2),
(18, '2020-02-02 12:21:11.025908', '9', 'Guitars object (9)', 1, '[{\"added\": {}}]', 12, 2),
(19, '2020-02-08 06:42:55.903196', '2', 'Drum object (2)', 1, '[{\"added\": {}}]', 15, 2),
(20, '2020-02-10 10:02:00.457165', '1', 'Each object (1)', 1, '[{\"added\": {}}]', 17, 2),
(21, '2020-02-10 10:25:12.628352', '2', 'Each object (2)', 1, '[{\"added\": {}}]', 17, 2),
(22, '2020-02-10 10:28:52.771483', '2', 'Each object (2)', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Image\"]}}]', 17, 2),
(23, '2020-02-10 10:30:31.480617', '1', 'Each object (1)', 2, '[{\"changed\": {\"fields\": [\"Features\"]}}]', 17, 2),
(24, '2020-02-10 10:34:58.074047', '3', 'Each object (3)', 1, '[{\"added\": {}}]', 17, 2),
(25, '2020-02-13 12:35:35.122019', '3', 'Drum object (3)', 1, '[{\"added\": {}}]', 15, 2),
(26, '2020-02-13 12:36:40.631427', '4', 'Drum object (4)', 1, '[{\"added\": {}}]', 15, 2),
(27, '2020-02-13 12:37:49.775818', '5', 'Drum object (5)', 1, '[{\"added\": {}}]', 15, 2),
(28, '2020-02-13 12:39:15.573989', '6', 'Drum object (6)', 1, '[{\"added\": {}}]', 15, 2),
(29, '2020-02-13 12:40:15.361069', '7', 'Drum object (7)', 1, '[{\"added\": {}}]', 15, 2),
(30, '2020-02-15 17:50:08.476402', '2', 'Drum object (2)', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Image\"]}}]', 15, 2),
(31, '2020-02-16 08:46:59.897817', '10', 'bibek@2', 3, '', 4, 2),
(32, '2020-02-16 08:47:00.042735', '11', 'bibek@3', 3, '', 4, 2),
(33, '2020-02-16 08:47:00.154671', '15', 'bibek@345', 3, '', 4, 2),
(34, '2020-02-16 08:47:00.464492', '12', 'bibek@4', 3, '', 4, 2),
(35, '2020-02-16 08:47:00.497473', '13', 'bibek@5', 3, '', 4, 2),
(36, '2020-02-16 08:47:00.565435', '23', 'goku@dbz', 3, '', 4, 2),
(37, '2020-02-16 08:47:00.686364', '21', 'salon@12', 3, '', 4, 2),
(38, '2020-02-16 08:47:00.753328', '22', 'sonam@123', 3, '', 4, 2),
(39, '2020-02-16 08:47:00.786311', '18', 'sonam@sasd', 3, '', 4, 2),
(40, '2020-02-16 08:47:00.820288', '17', 'sonam@st', 3, '', 4, 2),
(41, '2020-02-16 08:47:00.853270', '19', 'sushil@123', 3, '', 4, 2),
(42, '2020-02-16 08:47:00.920247', '16', 'Yuri@16', 3, '', 4, 2),
(43, '2020-02-16 08:48:20.600840', '7', 'Guitars object (7)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 2),
(44, '2020-02-16 08:48:57.361189', '8', 'Guitars object (8)', 2, '[{\"changed\": {\"fields\": [\"Features\"]}}]', 12, 2),
(45, '2020-02-16 08:49:16.890472', '5', 'Guitars object (5)', 2, '[{\"changed\": {\"fields\": [\"Features\"]}}]', 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'book', 'booking'),
(10, 'Bookings', 'booking'),
(14, 'Bookings', 'cart'),
(16, 'books', 'book'),
(18, 'contact', 'contact'),
(5, 'contenttypes', 'contenttype'),
(15, 'Drum', 'drum'),
(17, 'Each', 'each'),
(9, 'Form', 'form'),
(11, 'Guitar', 'guitar'),
(12, 'Guitars', 'guitars'),
(7, 'music', 'music'),
(8, 'Product', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-17 05:49:14.934068'),
(2, 'auth', '0001_initial', '2020-01-17 05:49:17.152143'),
(3, 'admin', '0001_initial', '2020-01-17 05:49:30.980129'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-17 05:49:38.567565'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-17 05:49:38.637670'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-17 05:49:39.663976'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-17 05:49:41.217257'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-17 05:49:41.495098'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-17 05:49:41.563059'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-17 05:49:42.509661'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-17 05:49:42.590417'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-17 05:49:42.661374'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-17 05:49:42.907233'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-17 05:49:43.196070'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-17 05:49:43.350023'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-17 05:49:43.392207'),
(17, 'sessions', '0001_initial', '2020-01-17 05:49:43.642702'),
(18, 'music', '0001_initial', '2020-01-19 06:54:00.025204'),
(19, 'music', '0002_music_email', '2020-01-19 06:54:01.246832'),
(20, 'music', '0003_music_password', '2020-01-21 13:13:50.334037'),
(21, 'Product', '0001_initial', '2020-01-24 05:40:25.196734'),
(22, 'Form', '0001_initial', '2020-01-25 04:12:12.145530'),
(23, 'Bookings', '0001_initial', '2020-01-30 05:56:07.816538'),
(24, 'Guitar', '0001_initial', '2020-01-30 07:14:28.835376'),
(25, 'Guitars', '0001_initial', '2020-02-01 07:57:23.702913'),
(26, 'book', '0001_initial', '2020-02-05 10:47:10.850518'),
(27, 'Bookings', '0002_auto_20200205_1847', '2020-02-08 06:06:01.079359'),
(28, 'Bookings', '0003_booking', '2020-02-08 06:06:01.567625'),
(29, 'Bookings', '0004_auto_20200206_1047', '2020-02-08 06:06:06.949970'),
(30, 'Bookings', '0005_booking_quantity', '2020-02-08 06:06:07.228880'),
(31, 'Guitars', '0002_guitars_quantity', '2020-02-08 06:06:08.065620'),
(32, 'Bookings', '0006_remove_booking_quantity', '2020-02-08 06:17:22.493187'),
(33, 'Drum', '0001_initial', '2020-02-08 06:38:13.276260'),
(34, 'Guitars', '0003_remove_guitars_quantity', '2020-02-08 06:38:13.488289'),
(35, 'books', '0001_initial', '2020-02-08 06:38:13.786926'),
(36, 'Each', '0001_initial', '2020-02-10 09:56:14.087330'),
(37, 'contact', '0001_initial', '2020-02-11 05:12:37.939589');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fid7jk8guw0sbpkgjt4cswfnddm8dyw7', 'MTQ2MDA0MDcwY2IwNGYxYTVkMGZlMWVmYzE4MWFmYzg1OTAxNzlmNjp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWU4YzBiNzU0ZjZjN2QzYjRlZGQzMzYzNmI3N2RkYzVjZjk4Zjg2ZCJ9', '2020-03-01 09:17:36.402591'),
('x2q0fsocmpa2d18z3pbij7b2cthk2qjt', 'NWVmZmUyYjhhNjdiNmViYTE2OTg4MGEwZjBkNzNiNzI4MzVjNjc4Yjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzJlZjY0NTUwMGMyMTM3OTU0NDk3Y2Y4NTkxZWZlZjhkOWE4NTVmIn0=', '2020-02-04 13:14:33.710224');

-- --------------------------------------------------------

--
-- Table structure for table `drum_drum`
--

CREATE TABLE `drum_drum` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `features` longtext NOT NULL,
  `stock` int(11) NOT NULL,
  `prices` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drum_drum`
--

INSERT INTO `drum_drum` (`id`, `model`, `brand`, `features`, `stock`, `prices`, `image`) VALUES
(2, 'FS100DC', 'Paisen', 'heavy bass metal drum. With a great in build pickup.\r\nConcert type and really good surround sound', 5, 500, 'Most-Expensive-Drum-Kits.png'),
(3, 'Deax552', 'Levana', 'Super bass and powerful sound,\r\ndouble snare and side stand free', 4, 90, 'DRUAKUSTIK.png'),
(4, 'MDA887', 'Korean Guitar and Bass', 'More bass , very comfortable and easy to use\r\nwith a great quality sound', 12, 200, 'fame-spark-5201-studio-drum-kit-bk_1_DRU0032684-000.jpg'),
(5, '26AEagle', 'Yamaha', 'super light concert type drum with a \r\ngreat equiliser', 2, 500, 'fame-dd-5500-pro-e-drum-kit_1_DRU0027456-000.jpg'),
(6, 'QWE223', 'Natural Ebony', 'great sound quality drum\r\ngreat for beginners', 11, 250, 'lee-pigott-OJ4m4_yIgjY-unsplash.jpg'),
(7, '112AD', 'F-310 TBS', 'Drum pad for drum great \r\nmade with steel.', 12, 60, 'fame-fp9001-kick-pedal-_1_DRU0011073-000.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `each_each`
--

CREATE TABLE `each_each` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `features` longtext NOT NULL,
  `stock` int(11) NOT NULL,
  `prices` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `each_each`
--

INSERT INTO `each_each` (`id`, `model`, `brand`, `features`, `stock`, `prices`, `image`) VALUES
(1, 'Af7846', 'Fender', 'Electronic , tuner, in build equilaser\r\nFor Pro', 20, 50, 'gc.jpg'),
(2, 'AF60GD Grateful Dead OM Acoustic Guitar', 'Alvarez', 'Part of the Alvarez Grateful Dead Series 2019 collection, the AF60GD-Sunshine Folk/OM acoustic guitar continues their celebration of the Grateful Dead’s artwork.', 5, 100, 'brown-and-black-cut-away-acoustic-guitar-1010519.jpg'),
(3, 'Af7846', 'Korean Guitar and Bass', 'Best EQ,Tuner\r\nString and Hand made', 12, 123, 'alasdair-elmes-Fk5WQFTT2Qk-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `form_form`
--

CREATE TABLE `form_form` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Cpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guitars_guitars`
--

CREATE TABLE `guitars_guitars` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `features` longtext NOT NULL,
  `stock` int(11) NOT NULL,
  `prices` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guitars_guitars`
--

INSERT INTO `guitars_guitars` (`id`, `model`, `brand`, `features`, `stock`, `prices`, `image`) VALUES
(4, 'HuizhoLaike', 'Korean Guitar and Bass', '2020 latest arrival clean sound and clean bass. Strings , Bag , and peaks are free', 20, 29, 'pr2.webp'),
(5, 'GentdesPeak', 'Natural Ebony', 'Flexible and easy to use with great pickup and\r\na great soft string', 100, 1, 'pr1.webp'),
(6, 'Wooden', 'Paisen', 'Guitar Cute wooden Soprano Ukulele 21 Inch Ukulele for Beginner and Children Musical Instruments Sales', 10, 25, 'Top-Solid-Koa-Acacia-Concert-Ukulele-Hawaii.jpg_300x300.jpg_.webp'),
(7, 'Yamaha', 'F-310 TBS', '6 string acoustic guitar , Right handed tobacco colored pure wooden, Great for Live.', 50, 80, 'fender.jpg'),
(8, '977110421-FA', 'Fender', 'Dreadnought Pack Natural greate for beginners.\r\nNice and soft string', 30, 30, 'a1.jpg'),
(9, 'FS100C', 'Yamaha', 'Aucostic natural wooden and with inbuild sensores and clear audio output', 2, 100, 'pr6.webp');

-- --------------------------------------------------------

--
-- Table structure for table `music_music`
--

CREATE TABLE `music_music` (
  `id` int(11) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `title` longtext NOT NULL,
  `sdate` date NOT NULL,
  `marks` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Money` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Bookings_booking_user_id_8d21f525_fk_auth_user_id` (`user_id`),
  ADD KEY `Bookings_booking_product_id_b5e03f4d_fk_Guitars_guitars_id` (`product_id`);

--
-- Indexes for table `books_book`
--
ALTER TABLE `books_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_book_product_id_f2f4a0f1_fk_Drum_drum_id` (`product_id`),
  ADD KEY `books_book_user_id_4b809191_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `contact_contact`
--
ALTER TABLE `contact_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `drum_drum`
--
ALTER TABLE `drum_drum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `each_each`
--
ALTER TABLE `each_each`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_form`
--
ALTER TABLE `form_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guitars_guitars`
--
ALTER TABLE `guitars_guitars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_music`
--
ALTER TABLE `music_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `books_book`
--
ALTER TABLE `books_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_contact`
--
ALTER TABLE `contact_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `drum_drum`
--
ALTER TABLE `drum_drum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `each_each`
--
ALTER TABLE `each_each`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form_form`
--
ALTER TABLE `form_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guitars_guitars`
--
ALTER TABLE `guitars_guitars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `music_music`
--
ALTER TABLE `music_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD CONSTRAINT `Bookings_booking_product_id_b5e03f4d_fk_Guitars_guitars_id` FOREIGN KEY (`product_id`) REFERENCES `guitars_guitars` (`id`),
  ADD CONSTRAINT `Bookings_booking_user_id_8d21f525_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `books_book`
--
ALTER TABLE `books_book`
  ADD CONSTRAINT `books_book_product_id_f2f4a0f1_fk_Drum_drum_id` FOREIGN KEY (`product_id`) REFERENCES `drum_drum` (`id`),
  ADD CONSTRAINT `books_book_user_id_4b809191_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 17, 2022 lúc 11:43 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookr`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Help Desk User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(3, 1, 4),
(1, 1, 8),
(4, 1, 14),
(2, 1, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add contributor', 8, 'add_contributor'),
(30, 'Can change contributor', 8, 'change_contributor'),
(31, 'Can delete contributor', 8, 'delete_contributor'),
(32, 'Can view contributor', 8, 'view_contributor'),
(33, 'Can add publisher', 9, 'add_publisher'),
(34, 'Can change publisher', 9, 'change_publisher'),
(35, 'Can delete publisher', 9, 'delete_publisher'),
(36, 'Can view publisher', 9, 'view_publisher'),
(37, 'Can add review', 10, 'add_review'),
(38, 'Can change review', 10, 'change_review'),
(39, 'Can delete review', 10, 'delete_review'),
(40, 'Can view review', 10, 'view_review'),
(41, 'Can add book contributor', 11, 'add_bookcontributor'),
(42, 'Can change book contributor', 11, 'change_bookcontributor'),
(43, 'Can delete book contributor', 11, 'delete_bookcontributor'),
(44, 'Can view book contributor', 11, 'view_bookcontributor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, '', NULL, 0, 'peterjones@test.com', '', '', 'peterjones@test.com', 0, 1, '2022-06-08 10:09:12.553123'),
(2, '', NULL, 0, 'marksandler@test.com', '', '', 'marksandler@test.com', 0, 1, '2022-06-08 10:09:12.689757'),
(3, 'pbkdf2_sha256$216000$lEm22yW0aTWs$OvDlOcIEnhpsnJ4eVmbsTk/RZwX02AAQmoDVzdEWAnk=', '2022-06-17 09:01:53.378355', 1, 'thanhtruc', '', '', 'tructructhanh03@gmail.com', 1, 1, '2022-06-09 12:28:11.601226'),
(4, 'pbkdf2_sha256$216000$5miS8aiBlxCP$SbOg0hxbOxNYjwQKGCtBxjHbL0qyafTNHNcKmMIbv60=', '2022-06-16 14:43:12.776359', 0, 'Alice', 'Alice', 'White', '26082000truc@example.com', 0, 1, '2022-06-09 12:53:49.000000'),
(5, 'pbkdf2_sha256$216000$KAxOeO5IVi1T$ndYo7ZjGdj+3dbDwNHbUeE/OsJujG7fLixJpqYJGhnM=', '2022-06-09 12:59:42.714784', 0, 'carol', 'Carol', 'Brown', '03091990carol@example.com', 1, 1, '2022-06-09 12:56:37.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
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
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-09 12:46:58.391491', '1', 'Help Desk User', 1, '[{\"added\": {}}]', 3, 3),
(2, '2022-06-09 12:53:49.907171', '4', 'Alice', 1, '[{\"added\": {}}]', 4, 3),
(3, '2022-06-09 12:55:32.768005', '4', 'Alice', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 3),
(4, '2022-06-09 12:56:37.250628', '5', 'carol', 1, '[{\"added\": {}}]', 4, 3),
(5, '2022-06-09 12:57:06.142770', '5', 'carol', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 3),
(6, '2022-06-09 12:58:54.640716', '5', 'carol', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'reviews', 'book'),
(11, 'reviews', 'bookcontributor'),
(8, 'reviews', 'contributor'),
(9, 'reviews', 'publisher'),
(10, 'reviews', 'review'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-08 10:08:05.175413'),
(2, 'auth', '0001_initial', '2022-06-08 10:08:06.753797'),
(3, 'admin', '0001_initial', '2022-06-08 10:08:14.357543'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-08 10:08:16.981886'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-08 10:08:17.043700'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-08 10:08:17.884988'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-08 10:08:18.686451'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-08 10:08:18.893348'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-08 10:08:18.916958'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-08 10:08:19.333734'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-08 10:08:19.362973'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-08 10:08:19.383816'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-08 10:08:19.529698'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-08 10:08:19.613216'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-08 10:08:19.785011'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-08 10:08:20.103294'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-08 10:08:20.330561'),
(18, 'reviews', '0001_initial', '2022-06-08 10:08:22.813071'),
(19, 'sessions', '0001_initial', '2022-06-08 10:08:26.931222'),
(20, 'reviews', '0002_auto_20220615_2128', '2022-06-15 14:28:45.060959');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('luwbfnx2m8z1kpsfyngonoi9qgmzfljt', '.eJxVjEEOgjAQRa9CujYEGKytO4079QTGkGlnKlXTGgq4MN5dSVjo9r_330s0OPRtMyTuGk9iLUAsfjeD9sZhAnTFcIm5jaHvvMknJZ9pyo-R-L6d3b9Ai6n9vgsCo8kqy8qBlhVrklVdOygKrBRbYFeWK7m05JST4MCtlCoBa61lbUB9o6PnJ1NjYrwlsT6dyoXY0IjBMmU75kd2YOyCD5fs6fs223OHSZzP7w-Ka0t4:1o27rZ:hyYzf1_k9WxCscjJNmvAedGJzoWGCYr6CjG-wgwKqNc', '2022-07-01 09:01:57.028340');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews_book`
--

CREATE TABLE `reviews_book` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `publication_date` date NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `sample` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reviews_book`
--

INSERT INTO `reviews_book` (`id`, `title`, `publication_date`, `isbn`, `publisher_id`, `cover`, `sample`) VALUES
(1, 'Advanced Deep Learning with Keras', '2018-10-31', '9781788629416', 1, NULL, NULL),
(2, 'Hands-On Machine Learning for Algorithmic Trading', '2018-12-31', '9781789346411', 1, 'book_covers/machine-learning-for-algorithmic-trading.png', 'book_samples/machine-learning-for-trading.pdf'),
(3, 'Architects of Intelligence', '2018-11-23', '9781789954531', 1, NULL, NULL),
(4, 'Deep Reinforcement Learning Hands-On', '2018-06-20', '9781788834247', 1, NULL, NULL),
(5, 'Natural Language Processing with TensorFlow', '2018-05-30', '9781788478311', 1, NULL, NULL),
(6, 'Hands-On Reinforcement Learning with Python', '2018-06-27', '9781788836524', 1, NULL, NULL),
(7, 'Brave New World', '2006-10-18', '9780060850524', 2, NULL, NULL),
(8, 'The Grapes of Wrath', '2006-03-28', '9780143039433', 3, NULL, NULL),
(9, 'For Whom The Bell Tolls', '2019-07-16', '9781476787770', 4, NULL, NULL),
(10, 'To Kill A Mocking Bird', '2002-01-01', '9780060935467', 2, NULL, NULL),
(11, 'The Great Gatsby', '2004-09-30', '9780743273565', 4, NULL, NULL),
(12, 'The Catcher in the Rye', '2001-01-30', '9780316769174', 5, NULL, NULL),
(13, 'Farenheit 451', '2012-01-10', '9781451673319', 6, NULL, NULL),
(14, 'Pride and Prejudice', '2002-12-31', '9780141439518', 3, NULL, NULL),
(15, '1984', '2017-04-04', '9781328869333', 7, NULL, NULL),
(16, 'Animal Farm: A Fairy Story', '1996-04-18', '9780151002177', 7, NULL, NULL),
(17, 'Paul Clifford', '2018-05-12', '9781719053167', 8, NULL, NULL),
(18, 'The Talisman', '2012-09-25', '9781451697216', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews_bookcontributor`
--

CREATE TABLE `reviews_bookcontributor` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `book_id` int(11) NOT NULL,
  `contributor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reviews_bookcontributor`
--

INSERT INTO `reviews_bookcontributor` (`id`, `role`, `book_id`, `contributor_id`) VALUES
(1, 'AUTHOR', 1, 1),
(2, 'AUTHOR', 2, 4),
(3, 'AUTHOR', 3, 5),
(4, 'AUTHOR', 4, 6),
(5, 'AUTHOR', 5, 7),
(6, 'AUTHOR', 6, 8),
(7, 'AUTHOR', 7, 9),
(8, 'AUTHOR', 8, 10),
(9, 'AUTHOR', 9, 11),
(10, 'AUTHOR', 10, 12),
(11, 'AUTHOR', 11, 13),
(12, 'AUTHOR', 12, 14),
(13, 'AUTHOR', 13, 15),
(14, 'AUTHOR', 14, 16),
(15, 'AUTHOR', 15, 18),
(16, 'AUTHOR', 17, 19),
(17, 'COMMENTATOR', 14, 17),
(18, 'CO_AUTHOR', 18, 21),
(19, 'CO_AUTHOR', 18, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews_contributor`
--

CREATE TABLE `reviews_contributor` (
  `id` int(11) NOT NULL,
  `first_names` varchar(50) NOT NULL,
  `last_names` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reviews_contributor`
--

INSERT INTO `reviews_contributor` (`id`, `first_names`, `last_names`, `email`) VALUES
(1, 'Rowel', 'Atienza', 'RowelAtienza@example.com'),
(2, 'Packt', 'Example Editor', 'PacktEditor@example.com'),
(3, 'Packtp', 'Editor Example', 'PacktEditor2@example.com'),
(4, 'Jansen', 'Stefan', 'StefanJansen@example.com'),
(5, 'Martin', 'Ford', 'MartinFord@example.com'),
(6, 'Maxim', 'Lapan', 'MaximLapan@example.com'),
(7, 'Thushan', 'Ganegedara', 'ThushanGanegedara@example.com'),
(8, 'Sudharsan', 'Ravichandiran', 'SudharsanRavichandiran@example.com'),
(9, 'Aldous', 'Huxley', 'AldousHuxley@example.com'),
(10, 'John', 'Steinbeck', 'JSteinbeck@example.com'),
(11, 'Ernest', 'Hemingway', 'ErnestHemingway@example.com'),
(12, 'Harper', 'Lee', 'HarperLee@example.com'),
(13, 'Franics Scott', 'Fitzgerald', 'FScottFitzgerald@example.com'),
(14, 'Jerome David', 'Salinger', 'JDSalinger@example.com'),
(15, 'Ray', 'Bradbury', 'RayBradbury@example.com'),
(16, 'Jane', 'Austen', 'JaneAusten@example.com'),
(17, 'Tony', 'Tanner', 'TonyTanner@example.com'),
(18, 'George', 'Orwell', 'GeorgeOrwell@example.com'),
(19, 'Edward', 'Bulwer Lytton', 'EdwardBulwerLytton@example.com'),
(20, 'Stephen', 'King', 'StephenKing@example.com'),
(21, 'Peter', 'Straub', 'PeterStraub@example.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews_publisher`
--

CREATE TABLE `reviews_publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reviews_publisher`
--

INSERT INTO `reviews_publisher` (`id`, `name`, `website`, `email`) VALUES
(1, 'Packt Publishing', 'https://www.packtpub.com/', 'info@packtpub.com'),
(2, 'Harper Collins', 'https://www.harpercollins.com', 'feedback@harpercollins.com'),
(3, 'Penguin Classics', 'http://www.penguinclassics.com', 'contact@penguinclassics.com'),
(4, 'Scribner', 'https://www.simonandschusterpublishing.com/scribner/', 'ScribnerPublicity@SimonandSchuster.com.'),
(5, 'Bay Back Books', 'https://www.hachettebookgroup.com/imprint/little-brown-and-company/back-bay-books/', 'customer.service@hbgusa.com.'),
(6, 'Simon and Schuster', 'https://www.simonandschuster.com', 'contact@simonandschuster.com'),
(7, 'Houghton Mifflin Harcourt', 'https://www.hmhco.com', 'techsupport@hmhco.com'),
(8, 'CreateSpace Independent Publishing Platform', 'https://www.createspace.com', 'info@createspace.com'),
(9, 'Pocket Books', 'https://pocketbookssampleurl.com', 'pocketbook@example.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews_review`
--

CREATE TABLE `reviews_review` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_edited` datetime(6) DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reviews_review`
--

INSERT INTO `reviews_review` (`id`, `content`, `rating`, `date_created`, `date_edited`, `book_id`, `creator_id`) VALUES
(1, 'A must read for all', 5, '2022-06-08 10:09:12.617948', '2020-01-04 16:31:40.376237', 1, 1),
(2, 'An ok read', 3, '2022-06-08 10:09:12.769544', '2020-01-04 16:31:40.376237', 1, 2),
(3, 'Very interesting and informative.', 5, '2022-06-14 09:11:09.614939', '2022-06-14 09:13:24.664839', 2, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `reviews_book`
--
ALTER TABLE `reviews_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_book_publisher_id_a3cbe35c_fk_reviews_publisher_id` (`publisher_id`);

--
-- Chỉ mục cho bảng `reviews_bookcontributor`
--
ALTER TABLE `reviews_bookcontributor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_bookcontributor_book_id_e7bfc5b2_fk_reviews_book_id` (`book_id`),
  ADD KEY `reviews_bookcontribu_contributor_id_e3ee3341_fk_reviews_c` (`contributor_id`);

--
-- Chỉ mục cho bảng `reviews_contributor`
--
ALTER TABLE `reviews_contributor`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews_publisher`
--
ALTER TABLE `reviews_publisher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews_review`
--
ALTER TABLE `reviews_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_review_book_id_9a657eea_fk_reviews_book_id` (`book_id`),
  ADD KEY `reviews_review_creator_id_46914a15_fk_auth_user_id` (`creator_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `reviews_book`
--
ALTER TABLE `reviews_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `reviews_bookcontributor`
--
ALTER TABLE `reviews_bookcontributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `reviews_contributor`
--
ALTER TABLE `reviews_contributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `reviews_publisher`
--
ALTER TABLE `reviews_publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `reviews_review`
--
ALTER TABLE `reviews_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `reviews_book`
--
ALTER TABLE `reviews_book`
  ADD CONSTRAINT `reviews_book_publisher_id_a3cbe35c_fk_reviews_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `reviews_publisher` (`id`);

--
-- Các ràng buộc cho bảng `reviews_bookcontributor`
--
ALTER TABLE `reviews_bookcontributor`
  ADD CONSTRAINT `reviews_bookcontribu_contributor_id_e3ee3341_fk_reviews_c` FOREIGN KEY (`contributor_id`) REFERENCES `reviews_contributor` (`id`),
  ADD CONSTRAINT `reviews_bookcontributor_book_id_e7bfc5b2_fk_reviews_book_id` FOREIGN KEY (`book_id`) REFERENCES `reviews_book` (`id`);

--
-- Các ràng buộc cho bảng `reviews_review`
--
ALTER TABLE `reviews_review`
  ADD CONSTRAINT `reviews_review_book_id_9a657eea_fk_reviews_book_id` FOREIGN KEY (`book_id`) REFERENCES `reviews_book` (`id`),
  ADD CONSTRAINT `reviews_review_creator_id_46914a15_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

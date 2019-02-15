-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2018 at 11:06 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('draft','pending','published') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `published_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `slug`, `content`, `featured_image`, `category_id`, `user_id`, `status`, `created_at`, `updated_at`, `published_at`) VALUES
(36, 'Article A1', 'science-and-technology', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'article_48090220180307_6687.jpg', 10, 17, 'published', '2018-09-07 02:03:48', '2018-09-07 02:08:02', '2018-09-06 16:22:00'),
(37, 'system', 'olympics', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'article_35090220180607_2501.jpg', 8, 18, 'published', '2018-09-07 02:06:35', '2018-09-07 02:07:42', '2018-02-08 22:40:00'),
(38, 'Article A2', 'international news', '<p>hgfds</p>\r\n', NULL, 6, 15, 'published', '2018-09-07 13:14:40', '2018-09-07 13:15:18', '2018-03-09 23:09:00'),
(42, 'Article A3', 'national news', '<p><strong>Lionel Andr&eacute;s Messi Cuccittini</strong>&nbsp;(<small>Spanish pronunciation:&nbsp;</small><a href="https://en.wikipedia.org/wiki/Help:IPA/Spanish">[ljoËˆnel anËˆdÉ¾ez Ëˆmesi]</a><small>&nbsp;(<a href="https://en.wikipedia.org/wiki/File:Lionel_Andr%C3%A9s_Messi_-_Name.ogg"><img alt="About this sound" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png" style="height:11px; width:11px" /></a>&nbsp;<a href="https://upload.wikimedia.org/wikipedia/commons/0/09/Lionel_Andr%C3%A9s_Messi_-_Name.ogg">listen</a>)</small>;<a href="https://en.wikipedia.org/wiki/Lionel_Messi#cite_note-7">[A]</a>&nbsp;born 24 June 1987) is an Argentine professional&nbsp;<a href="https://en.wikipedia.org/wiki/Association_football">footballer</a>&nbsp;who plays as a&nbsp;<a href="https://en.wikipedia.org/wiki/Forward_(association_football)">forward</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Captain_(association_football)">captains</a>&nbsp;both Spanish club&nbsp;<a href="https://en.wikipedia.org/wiki/FC_Barcelona">Barcelona</a>&nbsp;and the&nbsp;<a href="https://en.wikipedia.org/wiki/Argentina_national_football_team">Argentina national team</a>. Often considered the best player in the world and regarded by many as one of the&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_association_football_players_considered_the_greatest_of_all_time">greatest players of all time</a>,<a href="https://en.wikipedia.org/wiki/Lionel_Messi#cite_note-Telegraph_2016-8">[6]</a><a href="https://en.wikipedia.org/wiki/Lionel_Messi#cite_note-9">[7]</a><a href="https://en.wikipedia.org/wiki/Lionel_Messi#cite_note-10">[8]</a>&nbsp;Messi has won a record-tying five&nbsp;<a href="https://en.wikipedia.org/wiki/Ballon_d%27Or">Ballon d&#39;Or</a>&nbsp;awards,<a href="https://en.wikipedia.org/wiki/Lionel_Messi#cite_note-13">[note 2]</a>&nbsp;four of which he won consecutively, and a record five&nbsp;<a href="https://en.wikipedia.org/wiki/European_Golden_Shoe">European Golden Shoes</a>. He has spent&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_one-club_men">his entire professional career</a>&nbsp;with Barcelona, where he has won 33 trophies, including nine&nbsp;<a href="https://en.wikipedia.org/wiki/La_Liga">La Liga</a>&nbsp;titles, four&nbsp;<a href="https://en.wikipedia.org/wiki/UEFA_Champions_League">UEFA Champions League</a>titles, and six&nbsp;<a href="https://en.wikipedia.org/wiki/Copas_del_Rey">Copas del Rey</a>. Both a prolific goalscorer and a creative playmaker, Messi holds the records for most official goals scored in&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_La_Liga_top_scorers#All-time_top_scorers">La Liga</a>&nbsp;(387),&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_La_Liga_top_scorers#Top_scorers_in_La_Liga_by_seasons">a La Liga season</a>&nbsp;(50),&nbsp;<a href="https://en.wikipedia.org/wiki/European_association_football_club_records#Most_goals_in_a_season">a club football season in Europe</a>&nbsp;(73), a calendar year (91),&nbsp;<a href="https://en.wikipedia.org/wiki/El_Cl%C3%A1sico#Top_goalscorers">El Cl&aacute;sico</a>&nbsp;(26), as well as those for most assists in La Liga (150) and the&nbsp;<a href="https://en.wikipedia.org/wiki/Copa_Am%C3%A9rica">Copa Am&eacute;rica</a>&nbsp;(11). He has scored over&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_men%27s_footballers_with_500_or_more_goals">600 senior career goals</a>&nbsp;for club and country.</p>\r\n\r\n<p>Born and raised in central Argentina, Messi was diagnosed with a&nbsp;<a href="https://en.wikipedia.org/wiki/Growth_hormone_deficiency">growth hormone deficiency</a>&nbsp;as a child. At age 13, he relocated to Spain to join Barcelona, who agreed to pay for his medical treatment. After a fast progression through Barcelona&#39;s youth academy, Messi made his competitive debut aged 17 in October 2004. Despite being injury-prone during his early career, he established himself as an integral player for the club within the next three years, finishing 2007 as a finalist for both the Ballon d&#39;Or and&nbsp;<a href="https://en.wikipedia.org/wiki/FIFA_World_Player_of_the_Year">FIFA World Player of the Year</a>&nbsp;award, a feat he repeated the following year. His first uninterrupted campaign came in the 2008&ndash;09 season, during which he helped Barcelona achieve the first&nbsp;<a href="https://en.wikipedia.org/wiki/Treble_(association_football)">treble</a>&nbsp;in Spanish football. At 22 years old, Messi won the Ballon d&#39;Or and FIFA World Player of the Year award by record voting margins</p>\r\n', 'article_11091320182007_1202.jpg', 9, 15, 'published', '2018-09-07 13:20:11', '2018-09-07 13:37:13', '2018-07-09 03:35:00'),
(50, 'Barcelona', 'Football', '<p><strong>Futbol Club Barcelona</strong>&nbsp;(<small>Catalan pronunciation:&nbsp;</small><a href="https://en.wikipedia.org/wiki/Help:IPA/Catalan">[fubËˆbÉ”É« ËˆkÉ«ub bÉ™rsÉ™ËˆÉ«onÉ™]</a><small>&nbsp;(<a href="https://en.wikipedia.org/wiki/File:Futbol_Club_Barcelona_-_name.ogg"><img alt="About this sound" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png" style="height:11px; width:11px" /></a>&nbsp;<a href="https://upload.wikimedia.org/wikipedia/commons/5/53/Futbol_Club_Barcelona_-_name.ogg">listen</a>)</small>), known simply as&nbsp;<strong>Barcelona</strong>&nbsp;and colloquially as&nbsp;<strong>Bar&ccedil;a</strong>(<a href="https://en.wikipedia.org/wiki/Help:IPA/Catalan">[ËˆbarsÉ™]</a>), is a professional&nbsp;<a href="https://en.wikipedia.org/wiki/Football_team">football club</a>&nbsp;based in&nbsp;<a href="https://en.wikipedia.org/wiki/Barcelona">Barcelona</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Catalonia">Catalonia</a>, Spain.</p>\r\n\r\n<p>Founded in 1899 by a group of Swiss, English and Catalan footballers led by&nbsp;<a href="https://en.wikipedia.org/wiki/Joan_Gamper">Joan Gamper</a>, the club has become a symbol of Catalan culture and&nbsp;<a href="https://en.wikipedia.org/wiki/Catalanism">Catalanism</a>, hence the motto&nbsp;<em>&quot;M&eacute;s que un club&quot;</em>&nbsp;(<em>&quot;More than a club&quot;</em>). Unlike many other football clubs, the&nbsp;<a href="https://en.wikipedia.org/wiki/Supporters_of_FC_Barcelona">supporters</a>&nbsp;own and operate Barcelona. It is the third most valuable sports team in the world, worth $4.07&nbsp;billion, and the&nbsp;<a href="https://en.wikipedia.org/wiki/Deloitte_Football_Money_League">world&#39;s third richest football club</a>&nbsp;in terms of revenue, with an annual turnover of &euro;648.3&nbsp;million.<a href="https://en.wikipedia.org/wiki/FC_Barcelona#cite_note-2">[2]</a><a href="https://en.wikipedia.org/wiki/FC_Barcelona#cite_note-3">[3]</a>&nbsp;The official Barcelona anthem is the &quot;<a href="https://en.wikipedia.org/wiki/Cant_del_Bar%C3%A7a">Cant del Bar&ccedil;a</a>&quot;, written by Jaume Picas and&nbsp;<a href="https://en.wikipedia.org/wiki/Josep_Maria_Espin%C3%A0s">Josep Maria Espin&agrave;s</a>.<a href="https://en.wikipedia.org/wiki/FC_Barcelona#cite_note-4">[4]</a></p>\r\n\r\n<p>Domestically, Barcelona has won 25&nbsp;<a href="https://en.wikipedia.org/wiki/La_Liga">La Liga</a>, 30&nbsp;<a href="https://en.wikipedia.org/wiki/Copa_del_Rey">Copa del Rey</a>, 13&nbsp;<a href="https://en.wikipedia.org/wiki/Supercopa_de_Espa%C3%B1a">Supercopa de Espa&ntilde;a</a>, 3&nbsp;<a href="https://en.wikipedia.org/wiki/Copa_Eva_Duarte">Copa Eva Duarte</a>&nbsp;and 2&nbsp;<a href="https://en.wikipedia.org/wiki/Copa_de_la_Liga">Copa de la Liga</a>trophies, as well as being the record holder for the latter four competitions. In&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_UEFA_club_competition_winners">international club football</a>, Barcelona has won 20 European and World titles: 5&nbsp;<a href="https://en.wikipedia.org/wiki/UEFA_Champions_League">UEFA Champions League</a>&nbsp;titles, a record 4&nbsp;<a href="https://en.wikipedia.org/wiki/UEFA_Cup_Winners%27_Cup">UEFA Cup Winners&#39; Cup</a>, a joint record 5&nbsp;<a href="https://en.wikipedia.org/wiki/UEFA_Super_Cup">UEFA Super Cup</a>, a record 3&nbsp;<a href="https://en.wikipedia.org/wiki/Inter-Cities_Fairs_Cup">Inter-Cities Fairs Cup</a>&nbsp;and a joint record 3&nbsp;<a href="https://en.wikipedia.org/wiki/FIFA_Club_World_Cup">FIFA Club World Cup</a>.<a href="https://en.wikipedia.org/wiki/FC_Barcelona#cite_note-Football_Europe:_FC_Barcelona-5">[5]</a>&nbsp;Barcelona was ranked first in the&nbsp;<a href="https://en.wikipedia.org/wiki/International_Federation_of_Football_History_%26_Statistics">International Federation of Football History &amp; Statistics</a>&nbsp;Club World Ranking for 1997, 2009, 2011, 2012 and 2015<a href="https://en.wikipedia.org/wiki/FC_Barcelona#cite_note-6">[6]</a><a href="https://en.wikipedia.org/wiki/FC_Barcelona#cite_note-7">[7]</a>&nbsp;and currently occupies the third position on the&nbsp;<a href="https://en.wikipedia.org/wiki/UEFA_club_rankings">UEFA club rankings</a>.<a href="https://en.wikipedia.org/wiki/FC_Barcelona#cite_note-8">[8]</a>&nbsp;The club has a long-standing rivalry with&nbsp;<a href="https://en.wikipedia.org/wiki/Real_Madrid_C.F.">Real Madrid</a>; matches between the two teams are referred to as&nbsp;<em><a href="https://en.wikipedia.org/wiki/El_Cl%C3%A1sico">El Cl&aacute;sico</a></em>.</p>\r\n', 'article_26091320184207_8667.png', 13, 15, 'published', '2018-09-07 13:33:12', '2018-09-07 13:42:26', '2018-03-09 23:09:00'),
(51, 'name', 'Dance', '', NULL, 10, 15, 'draft', '2018-09-07 16:53:32', '2018-09-07 16:53:32', '2018-09-03 23:09:00'),
(52, 'Football', 'Football News', '', 'article_06091120180709_7574.jpg', 14, 15, 'published', '2018-09-09 11:05:43', '2018-09-09 11:07:06', '2018-03-09 23:09:00'),
(53, 'Legendary', 'Football History', '', 'article_55090020181510_8544.jpg', 14, 15, 'published', '2018-09-10 00:15:55', '2018-09-10 00:16:36', '2018-09-09 14:30:00'),
(54, 'Article A5', 'Article A-5', '', 'article_40090120180110_1578.jpg', 8, 15, 'published', '2018-09-10 01:01:40', '2018-09-10 01:02:20', '2018-03-09 23:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(4, 'International ', '								international news', 'active', '2018-08-22 15:52:42', '2018-08-27 19:23:35'),
(6, 'International sports', '								olympics', 'active', '2018-08-24 09:50:45', '2018-08-27 19:24:28'),
(8, 'Public', 'videos', 'active', '2018-08-27 19:25:08', '2018-08-27 19:25:41'),
(9, 'National', 'National news', 'active', '2018-09-06 19:39:42', '2018-09-06 19:39:42'),
(10, 'Science & technology', 'science-technology', 'active', '2018-09-06 19:40:31', '2018-09-06 19:40:31'),
(11, 'Education', 'Space station news', 'active', '2018-09-06 19:40:55', '2018-09-06 19:40:55'),
(12, 'Business', 'business news', 'active', '2018-09-06 19:41:52', '2018-09-06 19:41:52'),
(13, 'International Sports', 'Football ', 'active', '2018-09-07 13:31:15', '2018-09-07 13:31:15'),
(14, 'Football', 'Football History', 'active', '2018-09-09 11:03:41', '2018-09-09 11:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `content`, `article_id`, `created_at`) VALUES
(2, 'Ankit Oli', 'oliankit@gmail.com', 'This is so crazy.', 53, '2018-09-10 03:10:14'),
(3, 'leosantosh', 'leosantosh@gmail.com', 'I love this article', 53, '2018-09-10 03:18:23'),
(4, 'suraj', 'suraj@gmail.com', 'Vamos  Barca', 50, '2018-09-10 09:56:27'),
(5, 'binod paudel', 'paudel@gmail.com', 'Im so happy ', 52, '2018-09-10 23:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('admin','author') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `username`, `password`, `address`, `phone`, `type`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Ausha', '', '', 'Aushathapa@gmail.com', 'Ausha Thapa', '7b52009b64fd0a2a49e6d8a939753077792b0554', '', '09876666576', 'author', 'inactive', '2018-08-20 11:32:23', '2018-08-21 18:48:25'),
(9, 'susan', '', '', 'susan@gmail.com', 'Susan Oli', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', '								Kathmandu ', '122345432', 'author', 'active', '2018-08-21 18:47:01', '2018-08-21 18:47:01'),
(10, 'Hellsdevil', ' P', 'Oli', 'ankit@gmail.com', 'Anmol Oli', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'kathmandu', '9825573949', 'admin', 'active', '2018-08-22 10:24:48', '2018-09-12 12:42:30'),
(11, 'Author ', '', '', 'AuthorA@gmail.com', 'AuthorA', '8cb2237d0679ca88db6464eac60da96345513964', '						jamal		 ', '2345678', 'author', 'active', '2018-08-22 11:40:40', '2018-08-22 11:40:40'),
(12, 'Author', '', '', 'AuthorB@gmail.com', 'AuthorB', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '				Gwarko				 ', '123456789', 'author', 'active', '2018-08-22 11:41:32', '2018-08-22 11:41:32'),
(13, 'Author', '', '', 'AuthorC@gmail.com', 'AuthorC', '9f8e8ed4a01ed7432b9394d627922ae3bb0a4fbe', '				Chakrapath				 ', '1234567890', 'author', 'active', '2018-08-22 11:42:34', '2018-08-22 11:42:34'),
(14, 'Ashim', '', '', 'khadka@gmail.com', 'Ashim khadka', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'bardiya', '9876666576', 'author', 'active', '2018-08-24 15:27:27', '2018-08-24 15:27:27'),
(15, 'author', '', '', 'authorD@gmail.com', 'authorD', '7c4a8d09ca3762af61e59520943dc26494f8941b', '		ktm						 ', '123456789', 'author', 'active', '2018-08-24 22:57:30', '2018-08-24 22:57:30'),
(17, 'Author', '', '', 'sunnygkp10@gmail.com', 'Author A', '8cb2237d0679ca88db6464eac60da96345513964', 'ujhuiehuih\r\n`uiwehiu', '9876666576', 'author', 'active', '2018-09-07 02:01:26', '2018-09-07 02:01:26'),
(18, 'Sarita ', '', '', 'olisarita@gmail.com', 'sarita oli', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '							baneshwor	 ', '0987654', 'author', 'active', '2018-09-07 02:05:26', '2018-09-07 02:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_logs`
--

CREATE TABLE `user_login_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_login_logs`
--

INSERT INTO `user_login_logs` (`id`, `user_id`, `ip_address`, `created_at`) VALUES
(0, 10, '::1', '2018-09-12 12:42:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD CONSTRAINT `user_login_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

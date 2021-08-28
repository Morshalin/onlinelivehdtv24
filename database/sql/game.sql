-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2021 at 11:17 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'WHO WE ARE', 'who-we-are_2020-06-26_5ef5acfd212be.png', '<p><a href=\"https://onlinelivehdtv24.com/\">onlinelivehdtv24.com</a> is an international sports event scheduling and sports live website. Established in 2020, the site launches with the mission of giving sports fan a regular update on various popular events across the world as well as availing themselves of an opportunity to watch online live events through our website. We basically arranged our site with international gaming events including <a href=\"https://onlinelivehdtv24.com/category/athletics\">Athletics</a>, <a href=\"https://onlinelivehdtv24.com/category/crossfit\">Crossfit</a>, <a href=\"https://onlinelivehdtv24.com/category/football\">Football</a>, <a href=\"https://onlinelivehdtv24.com/category/horse-race\">Horse Race</a>, <a href=\"https://onlinelivehdtv24.com/category/rugby\">Rugby</a> and <a href=\"https://onlinelivehdtv24.com/category/nfl\">NFL</a>, the most popular sports in the world. We keep you all the possible update with the <a href=\"https://onlinelivehdtv24.com/upcomingevents\">upcoming match</a> all the year round so that our sports fans get to know the news of their favorite games with ease. All the data we input in our website is wholly collected from search engines, Wikipedia and main related sports sites so our information is trustworthy and right at all sides. If there is any unintentional mistake occurred by us, we hope that you please accept our sincere apologies. onlinelivehdtv24.com will make sure that you get the right information, we want to please you with the available online live video support and above all we want to make sure you are happy with us.</p>', '1', '2019-12-30 02:42:25', '2020-06-26 08:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_slug_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_slug_name`, `banner_image`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ATHLETICS', 'athletics', 'athletics_2019-12-30_5e09a61093256.jpg', NULL, NULL, '1', '2019-12-30 01:24:00', '2019-12-30 01:24:00'),
(2, 'CROSSFIT', 'crossfit', 'crossfit_2020-03-05_5e60d791847a2.png', NULL, NULL, '1', '2019-12-30 01:24:58', '2020-03-05 10:42:25'),
(3, 'FOOTBALL', 'football', 'football_2020-01-04_5e1014887d35b.jpg', NULL, NULL, '1', '2020-01-03 22:27:36', '2020-01-03 22:28:56'),
(4, 'Horse Race', 'horse-race', 'horse-race_2020-01-04_5e10146a07a90.jpg', NULL, NULL, '1', '2020-01-03 22:28:26', '2020-01-03 22:28:26'),
(5, 'Rugby', 'rugby', 'rugby_2020-01-04_5e1014a9eedca.jpg', NULL, NULL, '1', '2020-01-03 22:29:29', '2020-01-03 22:29:29'),
(6, 'NFL', 'nfl', 'nfl_2020-01-04_5e1014de78674.jpg', NULL, NULL, '1', '2020-01-03 22:30:22', '2020-01-03 22:30:22'),
(8, 'SPORTS NEWS', 'sports-news', 'sports-news_2020-06-26_5ef5ae7425e35.jpg', 'news', NULL, '1', '2020-06-26 08:14:44', '2020-06-26 08:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
CREATE TABLE IF NOT EXISTS `clubs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `club_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `club_name`, `logo_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Valencia', 'valencia_2019-12-30_5e09b172b143b.png', '1', '2019-12-30 02:12:34', '2019-12-30 02:12:34'),
(2, 'Real Sociedad', 'real-sociedad_2019-12-30_5e09b1975d217.png', '1', '2019-12-30 02:13:11', '2019-12-30 02:13:11'),
(5, '2020 World Athletics Indoor Championships', '2020-world-athletics-indoor-championships_2020-01-22_5e27fa89df17f.png', '1', '2020-01-18 06:26:56', '2020-01-22 07:32:25'),
(6, '2020 Summer Olympics (Athletics)', '2020-summer-olympics-athletics_2020-01-22_5e27d03488fe5.png', '1', '2020-01-18 08:37:06', '2020-01-22 04:31:48'),
(7, '2020 Summer Paralympics (Athletics)', '2020-summer-paralympics-athletics_2020-01-22_5e27d061b9ad8.png', '1', '2020-01-18 08:37:30', '2020-01-22 04:32:33'),
(8, '2020 European Athletics Championships', '2020-european-athletics-championships_2020-01-22_5e27d081ef1a6.png', '1', '2020-01-18 08:37:50', '2020-01-22 04:33:05'),
(10, 'Brazil Crossfit Championship 2020', 'brazil-crossfit-championship-2020_2020-01-22_5e27fb6cafc0f.png', '1', '2020-01-20 04:58:41', '2020-01-22 07:36:12'),
(11, 'Mid Atlantic CrossFit Challenge 2020', 'mid-atlantic-crossfit-challenge-2020_2020-01-22_5e27d6cabafdb.png', '1', '2020-01-22 04:59:54', '2020-01-22 04:59:54'),
(12, 'CrossFit Italian Showdown', 'crossfit-italian-showdown_2020-01-22_5e27d711a093a.png', '1', '2020-01-22 05:01:05', '2020-01-22 05:01:05'),
(13, 'Down Under CrossFit Championship', 'down-under-crossfit-championship_2020-01-22_5e27d7365c8f4.png', '1', '2020-01-22 05:01:42', '2020-01-22 05:01:42'),
(14, 'CrossFit Granite Games', 'crossfit-granite-games_2020-01-22_5e27d748cd572.png', '1', '2020-01-22 05:02:00', '2020-01-22 05:02:00'),
(16, 'UEFA Champions League Final', 'uefa-champions-league-final_2020-01-22_5e27d778c9205.png', '1', '2020-01-22 05:02:48', '2020-01-22 05:02:48'),
(17, 'UEFA European Championship 2020', 'uefa-european-championship-2020_2020-01-22_5e27d78f2a20a.png', '1', '2020-01-22 05:03:11', '2020-01-22 05:03:11'),
(18, '2020 Copa America', '2020-copa-america_2020-01-22_5e27d7a0133b2.png', '1', '2020-01-22 05:03:28', '2020-01-22 05:03:28'),
(20, 'Dublin Horse Show', 'dublin-horse-show_2020-01-22_5e27d7c54dbe7.png', '1', '2020-01-22 05:04:05', '2020-01-22 05:04:05'),
(21, '2020 Open Horse Show', '2020-open-horse-show_2020-01-22_5e27d7d5eb6f4.png', '1', '2020-01-22 05:04:21', '2020-01-22 05:04:21'),
(22, 'Horse of the Year Show 2020', 'horse-of-the-year-show-2020_2020-01-22_5e27d7ea75dcc.png', '1', '2020-01-22 05:04:42', '2020-01-22 05:04:42'),
(23, '2020 World Rugby Sevens Series (Final Round)', '2020-world-rugby-sevens-series-final-round_2020-01-22_5e27d7fcb803a.png', '1', '2020-01-22 05:05:00', '2020-01-22 05:05:00'),
(24, 'FA Cup final', 'fa-cup-final_2020-01-22_5e27eed3f3649.png', '1', '2020-01-22 06:42:27', '2020-01-22 06:42:27'),
(25, '2020 FEI World Cup™ Finals', '2020-fei-world-cup-finals_2020-01-22_5e27f3925a491.png', '1', '2020-01-22 07:02:42', '2020-01-22 07:02:42'),
(26, 'Liverpool', 'liverpool_2020-02-04_5e391d224848b.png', '1', '2020-02-04 07:28:34', '2020-02-04 07:28:34'),
(27, 'Arsenal', 'arsenal_2020-02-04_5e391d41c0d53.png', '1', '2020-02-04 07:29:05', '2020-02-04 07:29:05'),
(28, 'Chelsea', 'chelsea_2020-02-04_5e391d54924d0.png', '1', '2020-02-04 07:29:24', '2020-02-04 07:29:24'),
(29, 'Newcastle', 'newcastle-united_2020-02-04_5e391d7759f8e.png', '1', '2020-02-04 07:29:59', '2020-02-04 11:08:58'),
(30, 'Hants County Exhibition', 'hants-county-exhibition_2020-02-12_5e4388dcc3058.png', '1', '2020-02-12 04:47:33', '2020-02-12 05:10:52'),
(31, '2021 Six Nations Championship', '2021-six-nations-championship_2020-04-02_5e85f7030a957.png', '1', '2020-04-02 06:34:05', '2020-04-02 14:30:27'),
(32, '2021 World Athletics Championships', '2021-world-athletics-championships_2020-07-01_5efcad044cf3c.png', '1', '2020-04-02 14:13:02', '2020-07-01 15:34:28'),
(33, '2021 World Athletics Cross Country Championships', '2021-world-athletics-cross-country-championships_2020-07-01_5efcae2ba2407.png', '1', '2020-04-02 14:49:24', '2020-07-01 15:39:23'),
(34, '2021 Kentucky Derby', '2021-kentucky-derby_2020-07-01_5efcb1badfae1.png', '1', '2020-04-02 15:27:07', '2020-07-01 15:54:34'),
(35, '2021 Belmont Stakes', '2021-belmont-stakes_2020-07-01_5efcb2d7c4a7d.png', '1', '2020-04-02 15:38:04', '2020-07-01 15:59:19'),
(36, 'Mud Hero 6K Alberta', 'mud-hero-6k-alberta_2020-04-09_5e8ebe6fe4670.png', '1', '2020-04-09 06:19:27', '2020-04-09 06:19:27'),
(37, 'Mud Hero Toronto 2020', 'mud-hero-toronto-2020_2020-04-11_5e912734cacb5.png', '1', '2020-04-11 02:11:00', '2020-04-11 02:11:00'),
(38, 'Mud Hero Nova Scotia', 'mud-hero-nova-scotia_2020-04-11_5e91468239f1f.png', '1', '2020-04-11 04:24:34', '2020-04-11 04:24:34'),
(39, 'Mud Hero Montreal 2020', 'mud-hero-montreal-2020_2020-06-13_5ee4996ee31b2.png', '1', '2020-06-13 09:16:30', '2020-06-13 09:16:30'),
(40, 'Horse Poor Barrel Race', 'horse-poor-barrel-race_2020-07-01_5efc9f81ad1de.png', '1', '2020-06-19 09:14:47', '2020-07-01 14:36:49'),
(41, 'Motokwe Derby - Horse Race 2020', 'motokwe-derby-horse-race-2020_2020-07-01_5efcb0f9c19c2.png', '1', '2020-06-19 09:15:17', '2020-07-01 15:51:21'),
(42, 'The Edinburgh Cup Raceday', 'the-edinburgh-cup-raceday_2020-07-01_5efcaf7a23c6d.png', '1', '2020-06-19 09:15:38', '2020-07-01 15:44:58'),
(43, 'The Honest Toun Family Day', 'the-honest-toun-family-day_2020-07-01_5efc9f7041253.png', '1', '2020-06-19 09:16:00', '2020-07-01 14:36:32'),
(44, 'Sunday Afternoon Racing', 'sunday-afternoon-racing_2020-07-01_5efcb06ad48a3.png', '1', '2020-06-19 09:16:20', '2020-07-01 15:48:58'),
(45, 'Ravens', 'ravens_2020-07-01_5efc9faf47241.png', '1', '2020-06-19 09:18:20', '2020-07-01 14:37:35'),
(46, 'Browns', 'browns_2020-07-01_5efcb498d3df6.png', '1', '2020-06-19 09:18:42', '2020-07-01 16:06:48'),
(47, 'Steelers', 'steelers_2020-07-01_5efc9fc34c7f8.png', '1', '2020-06-24 14:17:24', '2020-07-01 14:37:55'),
(48, 'Giants', 'giants_2020-07-01_5efc9f59c8096.png', '1', '2020-06-24 14:17:48', '2020-07-01 14:36:09'),
(49, 'Bengals', 'bengals_2020-07-01_5efcb424cce82.png', '1', '2020-06-24 14:18:22', '2020-07-01 16:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `number`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Morshalin', 'admin@gmail.com', '017927474786', 'Test Message', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.', '1', '2019-12-30 01:17:17', '2020-01-15 09:14:37'),
(2, 'Karin Cotter', 'karincotter@hotmail.com', '0413-8436399', 'I need help with supplies.', 'We need help with supplies.\r\n\r\nOur family is out of toilet paper and we can\'t get any in the stores.\r\n\r\nI can get them n95 masks at http://Freelytrade.com\r\nPlease list your extra supplies at freelytrade.com? We\'ll pay whatever the market rate is for it!\r\n\r\nYou\'ll save our lives now!\r\n\r\nStay safe\r\nKarin', '0', '2020-04-02 17:28:05', '2020-04-02 17:28:05'),
(3, 'Kerri Green', 'GreenJT67@gmail.com', '802-893-5421', 'Error on your website', 'It looks like you\'ve misspelled the word \"Exibition\" on your website.  I thought you would like to know :).  Silly mistakes can ruin your site\'s credibility.  I\'ve used a tool called SpellScan.com in the past to keep mistakes off of my website.\r\n\r\n-Kerri', '0', '2020-06-03 12:50:52', '2020-06-03 12:50:52'),
(4, 'Hayley Mae', 'hayley@workplacegenius.com', '0340 6454690', 'The best desktop Aircon unit for $89 - Works great for a hot office!', 'Hi\r\n\r\nIs your office workspace to hot? \r\n\r\nWe reviewed the top 3 mini desktop AC units for your office or home\r\n\r\nThe best mini AC unit on the market  is now 50% off while stocks last and under $100\r\n\r\nIt works awesome you can really feel the difference - it blows like ice!\r\n\r\ncheck it out here \r\n\r\nhttp://miniairconditioner.reviews\r\n\r\nhave a great day :) \r\n\r\nHayley Mae', '0', '2020-10-08 09:19:44', '2020-10-08 09:19:44'),
(5, 'Sheila Kitchens', 'information@onlinelivehdtv24.com', '909-743-2636', 'onlinelivehdtv24.com NOTICE.', 'ATT: onlinelivehdtv24.com / Sports | Home  WEB SITE SERVICES\r\nThis notification ENDS ON: Oct 12, 2020\r\n\r\n\r\nWe have actually not received a settlement from you.\r\nWe  have actually attempted to contact you but were incapable to contact you.\r\n\r\n\r\nKindly Visit: https://bit.ly/30XfP0W .\r\n\r\nFor information as well as to process a discretionary payment for services.\r\n\r\n\r\n\r\n10122020103654.', '0', '2020-10-12 15:05:28', '2020-10-12 15:05:28'),
(6, 'Hayley Mae', 'hayley@workplacegenius.com', '06-49363429', '>>>> BlackFriday - Top 20 Gadgets for 2020 <<<< 50% OFF Mega Sale :)', 'Hi\r\n\r\nCheck out the top 20 Tech Gadgets for 2020 \r\n\r\nMega 50% OFF BlackFriday sale \r\n\r\nFor Drones to Watches to LED portable Keyboards!\r\n\r\nThe Best gadets & Biggest Blackfriday discounts are here\r\n\r\n>>> https://wp-genius.com/blackfridaydeals <<<\r\n\r\nGrab an insane bargin now & Keep safe \r\n\r\nHayley Mae\r\nx', '0', '2020-11-15 12:53:27', '2020-11-15 12:53:27'),
(7, 'Eren Hocaoglu', 'eren.hocaoglu@creativeclicks.com', '06545728722', 'Ad-placement proposal', 'Hello,\r\n\r\nThis is Eren from Creative Clicks. I\'ve seen you are running Credit Card submit offers on your website.\r\n\r\nWe have our in-house product and with our performance (PO*CR), I am confident we can make good money together.\r\n\r\nCan we run a test on your traffic?\r\n\r\nWe can also have a chat on Skype and you can discuss the details with my manager.', '0', '2020-12-02 12:54:47', '2020-12-02 12:54:47'),
(8, 'Bryant Burne', 'bryant.burne@gmail.com', '070 4508 2644', 'How To Get More Traffic to onlinelivehdtv24.com in 2021', 'Hi,\r\n\r\nWe\'re wondering if you\'ve ever considered taking the content from onlinelivehdtv24.com and converting it into videos to promote on social media platforms such as Youtube?\r\n\r\nIt\'s another \'rod in the pond\' in terms of traffic generation, as so many people use Youtube.\r\n\r\nYou can read a bit more about the software here: https://yazing.com/deals/lumen5/JzoeR\r\n\r\nKind Regards,\r\nBryant', '0', '2020-12-04 20:36:56', '2020-12-04 20:36:56'),
(9, 'Louie Roesch', 'louie.roesch@gmail.com', '011394960794', 'Do you accept Guest Posts?', 'Hi,\r\n\r\nWe’re reaching out to ask if you’d be interested in featuring a guest post  on your website. We believe we can add value to your audience on a few related topics that would resonate with your readers. \r\n\r\nIf our offer is of interest to you, please complete the form here: https://backlinkpro.club/add-your-site/\r\n\r\nKind Regards,\r\nLouie', '0', '2021-02-09 14:37:59', '2021-02-09 14:37:59'),
(10, 'Darrel Busey', 'wo.r.d.pr.ess.20.021988+digteevne@gmail.com', '02.26.80.44.58', 'Question', 'Hello,\r\n\r\nAre you currently utilizing Wordpress/Woocommerce or maybe maybe you project to implement it sometime soon ? We offer over 2500 premium plugins as well as themes to download : https://shortok.xyz/QJb0m\r\n\r\nCheers,\r\n\r\nDarrel', '0', '2021-02-24 18:57:55', '2021-02-24 18:57:55'),
(11, 'Ronald White', 'ronald@approvedtoday.xyz', '202-991-6766', 'hello', 'Hello,\r\nI hope this day finds you well!\r\n\r\nDo you need funding for your Business?\r\n\r\nWe are a direct lender providing unsecured Business Loans up to 500k. We can approve you today and fund tomorrow. \r\n\r\nJust click the link to INSTANTLY see how much you qualify for. www.approvedtoday.xyz\r\n\r\n\r\nWarm Regards,\r\n\r\nRonald White\r\nApproved Today\r\nwww.approvedtoday.xyz', '0', '2021-03-08 14:45:09', '2021-03-08 14:45:09'),
(12, 'Cindi Cordner', 'cordner.cindi@outlook.com', '0690-9074386', 'Create professional videos to promote onlinelivehdtv24.com', 'Hi,\r\n\r\nWe\'re wondering if you\'ve considered taking the written content from onlinelivehdtv24.com and converting it into videos to promote on Youtube? It\'s another method of generating traffic.\r\n\r\nThere\'s a 14 day free trial available to you at the following link: https://www.vidnami.com/c/Vaughanv-vn-freetrial\r\n\r\nRegards,\r\nCindi', '0', '2021-04-17 18:42:16', '2021-04-17 18:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `match_condition` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `studium_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `clubone_id` bigint UNSIGNED DEFAULT NULL,
  `clubtwo_id` bigint UNSIGNED DEFAULT NULL,
  `single_club` bigint UNSIGNED DEFAULT NULL,
  `event_start_date` date DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `video_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalis_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `match_start_date` date DEFAULT NULL,
  `match_end_date` date DEFAULT NULL,
  `score_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image_alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image_alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_event` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_category_id_foreign` (`category_id`),
  KEY `events_subcategory_id_foreign` (`subcategory_id`),
  KEY `events_studium_id_foreign` (`studium_id`),
  KEY `events_user_id_foreign` (`user_id`),
  KEY `events_clubone_id_foreign` (`clubone_id`),
  KEY `events_clubtwo_id_foreign` (`clubtwo_id`),
  KEY `events_single_club_foreign` (`single_club`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `match_condition`, `category_id`, `subcategory_id`, `studium_id`, `user_id`, `clubone_id`, `clubtwo_id`, `single_club`, `event_start_date`, `event_end_date`, `video_link`, `detalis_link`, `match_start_date`, `match_end_date`, `score_one`, `score_two`, `title`, `title_slug`, `cover_image`, `cover_image_alt`, `thumbnail_image`, `thumbnail_image_alt`, `description`, `seo_title`, `event_type`, `event_country`, `event_city`, `total_event`, `schema_tag`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(12, '1', 1, NULL, 3, 1, NULL, NULL, 5, '2020-03-13', '2020-03-15', NULL, 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-03-13', '2020-03-15', '0', '0', '2020 World Athletics Indoor Championships', 'world-indoor-championships-athletics-2020-nanjing', '2020-world-athletics-indoor-championships_2020-01-25_5e2bef83c1ec0.jpg', 'nanjing indoor athletics 2020', '2020-world-athletics-indoor-championships_2020-01-25_5e2bee0b68625.png', 'world indoor athletics championship', NULL, 'World Indoor Championships Athletics 2020 Nanjing | onlinelivehdtv24', 'Sports event', 'China', 'Nanjing', '26', NULL, 'world indoor championships athletics 2020', 'Countdown Indoor athletics championships at the Nanjing\'s Cube gymnasium, Nanjing Youth Olympic Sports Park.Watch live time video on March 13 to 15, 2020.', '0', '2020-01-18 06:30:00', '2020-02-10 05:59:04'),
(13, '1', 1, NULL, 4, 1, NULL, NULL, 6, '2020-07-31', '2020-08-09', NULL, 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-07-31', '2020-08-09', '0', '0', '2020 Summer Olympics  Athletics', '2020-summer-olympics-athletics', '2020-summer-olympics-athletics_2020-01-25_5e2beff442ebd.jpg', 'summer olympics imperial garden athletics', '2020-summer-olympics-athletics_2020-01-18_5e22df0d0bcd7.jpg', '2020 track and field olympics tokyo', NULL, 'Track & Field Olympics 2020 | Summer Olympics | onlinelivehdtv24', 'Sports event', 'Japan', 'Tokyo', '48', '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"2020 Summer Olympics Athletics\",\r\n  \"startDate\" : \"2020-07-31\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"New National Stadium\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"streetAddress\" : \"Imperial Palace Garden\",\r\n      \"addressLocality\" : \"Tokyo\",\r\n      \"addressCountry\" : \"Japan\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/2020-summer-olympics-athletics_2020-01-25_5e2beff442ebd.jpg\"\r\n}\r\n</script>', NULL, 'Track & Field Summer Olympics is knocking at the door of Tokyo at New National Stadium, Imperial palace garden. Sign up and Watch live since July 31, 2020', '0', '2020-01-18 10:33:49', '2020-05-06 09:29:40'),
(14, '1', 1, NULL, 6, 1, NULL, NULL, 8, '2020-08-26', '2020-08-30', '2020 European Athletics Championships | 26-30 August | Paris', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-08-26', '2020-08-30', '0', '0', '2020 European Athletics Championships | Live Stream Online', '2020-european-championships-athletics-watch-live', '2020-european-athletics-championships_2020-01-25_5e2bf187addbf.jpg', 'europian chamionship', '2020-european-athletics-championships_2020-01-19_5e23dd387b932.jpg', 'europe championship athletics', '<p>The 2020 European Athletics Championships, the most prestigious athletic competition organized by the European Athletics Association, is scheduled from August 26 to August 30 at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Charlety_Stadium\" target=\"_blank\">Charlety Stadium</a>&nbsp;in Paris. It is the second time France is going to host the 26th edition European Athletics Championships since 1938 European Athletics Championships.</p>\n\n<p>The charlety stadium, with a capacity of 19,000 seats, will execute an eye-catching stage for 1,400 qualifying athletes of Europe. Athletes from 51 countries will participate in this world-famous event.</p>\n\n<p><strong>Participating countries:</strong> Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia Herzegovina, Bulgaria, Croatia, Cyprus, Czech Republic, Denmark, Estonia, Spain, Finland, France, Georgia, Germany, Gibraltar, Great Britain &amp; NI, Greece, Hungary, Iceland, Ireland, Israel, Italy, Kosovo, Latvia, Liechtenstein, Lithuania, Luxembourg, North Macedonia, Malta, Moldova, Monaco, Montenegro, Netherlands, Norway, Poland, Portugal, Romania, Russia, San Marino, Serbia, Slovak Republic, Slovenia, Sweden, Switzerland, Turkey, Ukraine</p>\n\n<p>Six days competition will start with an opening ceremony at 8 p.m on August 25, 2020. Final events will be held from Wednesday on August 26, 2020, and continue till August 30.&nbsp;</p>\n\n<h2>Competition schedule:</h2>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:75%\" summary=\"EVENING SESSION (MEN)\">\n	<caption>&nbsp;</caption>\n	<tbody>\n		<tr>\n			<td colspan=\"3\"><strong>DAY 1 ( Tuesday 25 August )</strong></td>\n		</tr>\n		<tr>\n			<td>Evening Session (Men)</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n		</tr>\n		<tr>\n			<td>17:25</td>\n			<td>100m</td>\n			<td>Heats</td>\n		</tr>\n		<tr>\n			<td>17:55</td>\n			<td>Javelin Throw</td>\n			<td>Qualification Group A</td>\n		</tr>\n		<tr>\n			<td>18:05</td>\n			<td>400m</td>\n			<td>Heats</td>\n		</tr>\n		<tr>\n			<td>19:10</td>\n			<td>Javelin Throw</td>\n			<td>Qualification Group B</td>\n		</tr>\n		<tr>\n			<td>19:20</td>\n			<td>1,500m</td>\n			<td>Heats</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td colspan=\"6\"><strong>DAY 2 ( Wednesday 26 August )</strong></td>\n		</tr>\n		<tr>\n			<td colspan=\"3\" rowspan=\"1\">Morning Session (M)</td>\n			<td colspan=\"3\" rowspan=\"1\">Evening Session (M)</td>\n		</tr>\n		<tr>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n		</tr>\n		<tr>\n			<td>09:45</td>\n			<td>400m hurdles</td>\n			<td>Heats</td>\n			<td>19:10</td>\n			<td>400m</td>\n			<td>Semi-Final</td>\n		</tr>\n		<tr>\n			<td>10:10</td>\n			<td>Triple Jump</td>\n			<td>Qualification Groups A &amp; B</td>\n			<td>20:25</td>\n			<td>100m</td>\n			<td>Semi-Final</td>\n		</tr>\n		<tr>\n			<td>11:20</td>\n			<td>High Jump</td>\n			<td>Qualification Groups A &amp; B</td>\n			<td>21:30</td>\n			<td>10,000m</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>11:55</td>\n			<td>Hammer Throw</td>\n			<td>Qualification Group A</td>\n			<td>22:25</td>\n			<td>100m</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>13:10</td>\n			<td>Hammer Throw</td>\n			<td>Qualification Group B</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td>From 15:00</td>\n			<td><strong>Long Jump @ Trocad&eacute;ro Athletics Park</strong></td>\n			<td>Qualification Groups A &amp; B</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td colspan=\"6\"><strong>DAY 3 ( Thursday 27 August )</strong></td>\n		</tr>\n		<tr>\n			<td colspan=\"3\" rowspan=\"1\">Morning Session (M)</td>\n			<td colspan=\"3\" rowspan=\"1\">Evening Session (M)</td>\n		</tr>\n		<tr>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n		</tr>\n		<tr>\n			<td>09:30</td>\n			<td>Shot Put</td>\n			<td>Qualification Groups A &amp; B</td>\n			<td>19:10</td>\n			<td>Pole Vault</td>\n			<td>Qualification Groups A &amp; B</td>\n		</tr>\n		<tr>\n			<td>09:40</td>\n			<td>Discus Throw</td>\n			<td>Qualification Group A</td>\n			<td>20:20</td>\n			<td>Long Jump</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>10:05</td>\n			<td>110m Hurdles</td>\n			<td>Heats</td>\n			<td>20:30</td>\n			<td>1,500m</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>10:55</td>\n			<td>Discus Throw</td>\n			<td>Qualification Group B</td>\n			<td>21:00</td>\n			<td>Javelin Throw</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>11:30</td>\n			<td>400m Hurdles</td>\n			<td>Semi-Final</td>\n			<td>22:15</td>\n			<td>400m</td>\n			<td>\n			<p>Final</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td colspan=\"6\"><strong>DAY 4 ( Friday 28 August )</strong></td>\n		</tr>\n		<tr>\n			<td colspan=\"3\" rowspan=\"1\">Morning Session (M)</td>\n			<td colspan=\"3\" rowspan=\"1\">Evening Session (M)</td>\n		</tr>\n		<tr>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n			<td><strong>Local time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n		</tr>\n		<tr>\n			<td>10:00</td>\n			<td>3,000m Steeple</td>\n			<td>Heats</td>\n			<td>19:05</td>\n			<td>Hammer Throw</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>10:45</td>\n			<td>800m</td>\n			<td>Heats</td>\n			<td>19:10</td>\n			<td>High Jump</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>11:55</td>\n			<td>200m</td>\n			<td>Heats</td>\n			<td>19:15</td>\n			<td>110m Hurdles</td>\n			<td>Semi-Final</td>\n		</tr>\n		<tr>\n			<td>12:25</td>\n			<td>500m</td>\n			<td>Heats</td>\n			<td>20:17</td>\n			<td>200m</td>\n			<td>Semi-Final</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>20:40</td>\n			<td>Triple Jump</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>21:00</td>\n			<td>400m Hurdles</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>22:10</td>\n			<td>110m Hurdles</td>\n			<td>Semi-Final &amp; Final</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td colspan=\"6\"><strong>DAY5 (Saturday 29 August)</strong></td>\n		</tr>\n		<tr>\n			<td colspan=\"3\" rowspan=\"1\">Morning Session (M)</td>\n			<td colspan=\"3\" rowspan=\"1\">Evening Session (M)</td>\n		</tr>\n		<tr>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n			<td><strong>Local time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n		</tr>\n		<tr>\n			<td>09:55</td>\n			<td>100m</td>\n			<td>Decathlon</td>\n			<td>18:30</td>\n			<td>High Jump</td>\n			<td>Decathlon - Groups A &amp; B</td>\n		</tr>\n		<tr>\n			<td>10:55</td>\n			<td>Long Jump</td>\n			<td>Decathlon - Groups A &amp; B</td>\n			<td>19:05</td>\n			<td>Discus Throw</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>11:15</td>\n			<td>800m</td>\n			<td>Semi-Final</td>\n			<td>19:10</td>\n			<td>4x400m Relay</td>\n			<td>Heats</td>\n		</tr>\n		<tr>\n			<td>12:25</td>\n			<td>Shot Put</td>\n			<td>Decathlon - Groups A &amp; B</td>\n			<td>19:55</td>\n			<td>Shot Put</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>21:20</td>\n			<td>5,000m</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>21:50</td>\n			<td>400m</td>\n			<td>Decathlon</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>22:25</td>\n			<td>200m</td>\n			<td>Final</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td colspan=\"6\"><strong>DAY6 (Sunday 30 August)</strong></td>\n		</tr>\n		<tr>\n			<td colspan=\"3\" rowspan=\"1\">Morning Session (M)</td>\n			<td colspan=\"3\" rowspan=\"1\">Evening Session (M)</td>\n		</tr>\n		<tr>\n			<td><strong>Local Time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n			<td><strong>Local time</strong></td>\n			<td><strong>Event</strong></td>\n			<td><strong>Category</strong></td>\n		</tr>\n		<tr>\n			<td>08:45</td>\n			<td>110m Hurdles</td>\n			<td>Decathlon</td>\n			<td>16:00</td>\n			<td>Javelin Throw</td>\n			<td>Decathlon- Group A</td>\n		</tr>\n		<tr>\n			<td>09:30</td>\n			<td>Discus Throw</td>\n			<td>Decathlon - Group A</td>\n			<td>16:45</td>\n			<td>3,000m Steeple</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>10:40</td>\n			<td>Discus Throw</td>\n			<td>Decathlon - Group B</td>\n			<td>17:10</td>\n			<td>Javelin Throw</td>\n			<td>Decathlon- Group B</td>\n		</tr>\n		<tr>\n			<td>11:35</td>\n			<td>4x100m Relay</td>\n			<td>Heats</td>\n			<td>17:15</td>\n			<td>Pole Vault</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>12:15</td>\n			<td>Pole Vault</td>\n			<td>Decathlon - Groups A &amp; B</td>\n			<td>17:35</td>\n			<td>4x100m Relay</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>08:35</td>\n			<td><strong>Half marathon</strong>&nbsp;in Paris</td>\n			<td>&nbsp;</td>\n			<td>18:35</td>\n			<td>4x400m Relay</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>19:05</td>\n			<td>800m</td>\n			<td>Final</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>19:40</td>\n			<td>1,500m</td>\n			<td>Decathlon</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Sources:&nbsp;<a href=\"https://www.athle2020.paris/en/the-event-2/schedule/\">athle2020.paris</a>,&nbsp;<a href=\"https://www.european-athletics.org/\">european-athletics.org</a></p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2020 European Championships Athletics | Watch Live | onlinelivehdtv24', 'Sports event', 'France', 'Paris', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"2020 European Athletics Championships | Live Stream Online\",\r\n  \"startDate\" : \"2020-08-26\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Stade Sébastien Charléty\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Paris\",\r\n      \"addressCountry\" : \"France\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/2020-european-athletics-championships_2020-01-25_5e2bf187addbf.jpg\",\r\n  \"description\" : \"The 2020 European Athletics Championships, the most prestigious athletic competition organized by the European Athletics Association, is scheduled from August 26 to August 30 at the <A href=\\\"https://en.wikipedia.org/wiki/Charlety_Stadium\\\" target=\\\"_blank\\\">Charlety Stadium</A> in Paris. It is the second time France is going to host the 26th edition European Athletics Championships since 1938 European Athletics Championships.</P>\\n\\n<P>The charlety stadium, with a capacity of 19,000 seats, will execute an eye-catching stage for 1,400 qualifying athletes of Europe. Athletes from 51 countries will participate in this world-famous event.\"\r\n}\r\n</script>', '2020 european championships athletics,  world athletics championships live, paris 2020 european athletics', 'Paris is going to host 2020 European championships Athletics for six days long in the famous Charlety Stadium. Check schedule and watch live streams here', '1', '2020-01-19 04:38:16', '2020-03-04 05:12:08'),
(15, '1', 1, NULL, 5, 1, NULL, NULL, 7, '2020-08-25', '2020-09-06', NULL, 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-08-25', '2020-09-06', '0', '0', '2020 Summer Paralympics Athletics', '2020-summer-paralympics-athletics', '2020-summer-paralympics-athletics_2020-01-25_5e2bf0de31e97.jpg', 'athletics paralympics summer 2020', '2020-summer-paralympics-athletics_2020-01-25_5e2bf0a343ec6.jpg', 'athletics summer paralympics', NULL, '2020 Summer Paralympics Athletics | onlinelivehdtv24', 'Sports event', 'Japan', 'Tokyo', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"2020 Summer Paralympics Athletics\",\r\n  \"startDate\" : \"2020-08-25\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"streetAddress\" : \"Olympic Stadium\",\r\n      \"addressLocality\" : \"Tokyo\",\r\n      \"addressCountry\" : \"Japan\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/2020-summer-paralympics-athletics_2020-01-25_5e2bf0de31e97.jpg\"\r\n}\r\n</script>', NULL, '16th summer Paralympics athletics 2020- upcoming multi-sports events hosted by Tokyo at Olympic Stadium from 25 August to 6 September. Watch live online', '1', '2020-01-19 06:02:11', '2020-02-17 04:39:03'),
(17, '1', 2, 2, 7, 1, NULL, NULL, 11, '2020-06-26', '2020-06-28', 'Mid Atlantic CrossFit Challenge 2020 | 17-19 April | Washington, DC 20003', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-06-26', '2020-06-28', '0', '0', 'Mid Atlantic CrossFit Challenge 2020', 'mid-atlantic-crossfit-challenge-2020', 'mid-atlantic-crossfit-challenge-2020_2020-01-26_5e2d3ddce2224.jpg', NULL, 'mid-atlantic-crossfit-challenge-2020_2020-01-22_5e27dd6e60ee6.jpg', NULL, '<p>The Mid Atlantic Crossfit Challenge will kick off April 17, 2020, to continue on April 19, 2020, at the DC Armory, Washington, USA. The onsite competition will outset in two divisions- individuals and teams. The athletes will be selected through Individual online qualifiers and Team online qualifiers held in between January and February 2020.</p>\n\n<p>Two workouts will be released from January 1st to January 6th with the score disclosed on January 6th at 8 p.m EST. Another two workouts will set out from January 8th to 13th, following the score on January 13th at 8 p.m EST. It is noted that Video submission needs to be submitted by the athletes to enter their scores. The same rules will be followed for Team online qualifiers.</p>\n\n<h2>2020 MACC Online Qualifier</h2>\n\n<p><strong>Individual</strong></p>\n\n<p>Week 1- Wednesday, January 1st - Monday, January 6th</p>\n\n<p>Week 2- Wednesday, January 8th- Monday, January 13th</p>\n\n<p><strong>Team</strong></p>\n\n<p>Week 1- Wednesday, January 29th- Monday, February 3rd</p>\n\n<p>Week 2- Wednesday, February 5th- Monday, February 10tn</p>\n\n<p><strong>Source</strong>:&nbsp;<a href=\"https://midatlanticcrossfitchallenge.com/qualifier\">midatlanticcrossfitchallenge.com</a></p>\n\n<p>Finally, the top 20 men and 20 women from Individual as well as 30 elite teams will earn the prestige to join the main event at Washington DC to perform Mid Atlantic Crossfit Challenge 2020.</p>\n\n<p>&nbsp;</p>', 'Mid Atlantic CrossFit Challenge 2020 DC Armory | onlinelivehdtv24', 'Sports event', 'United States', 'Washington, DC 20003, Brentwood,', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"Mid Atlantic CrossFit Challenge 2020\",\r\n  \"startDate\" : \"2020-04-17\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"DC Armory, 2001 E Capitol St SE\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"streetAddress\" : \"DC 20003\",\r\n      \"addressLocality\" : \"Brentwood\",\r\n      \"addressRegion\" : \"Washington\",\r\n      \"addressCountry\" : \"United States\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/mid-atlantic-crossfit-challenge-2020_2020-01-26_5e2d3ddce2224.jpg\",\r\n  \"description\" : \"The Mid Atlantic Crossfit Challenge will kick off April 17, 2020, to continue on April 19, 2020, at the DC Armory, Washington, USA.\"\r\n}\r\n</script>', 'mid atlantic crossfit challenge,mid atlantic crossfit challenge 2020,mid atlantic crossfit challenge dc armory,mid atlantic crossfit challenge live stream', 'The Mid Atlantic Crossfit Challenge at DC Armory will outset in two divisions. Top 20 men, 20 women and 30 team will get there to face challenge. Watch live.', '0', '2020-01-22 05:28:14', '2020-05-06 09:25:33'),
(18, '1', 2, 2, 33, 1, NULL, NULL, 12, '2020-04-24', '2020-04-26', 'CrossFit Italian Showdown 2020 | 24-26 April | Riccione', 'https://see.kmisln.com/offer?prod=604&ref=5149664', '2020-04-24', '2020-04-26', '0', '0', 'CrossFit Italian Showdown 2020', 'crossfit-italian-showdown-2020', 'crossfit-italian-showdown-2020_2020-01-26_5e2d3d3c17ded.jpg', '2020 crossfit italian showdown', 'crossfit-italian-showdown-2020_2020-01-22_5e27de6aaab2d.jpg', 'crossfit showdown italy', '<p><strong>2nd Update:</strong>&nbsp;On March 13, 2020, Crossfit HQ has made a decision not to hold the Italian Showdown online. Reexamining the circumstances, they took the option that the event should be held in the same location but on later date.</p>\n\n<p><strong>Update</strong>: Considering the current&nbsp;situation, the 2020 Crossfit Italian Showdown will take place online. It is announced that all the registered athletes can take part in the competition staying home safely. The podium finishers of each game division will be rewarded.&nbsp;</p>\n\n<p><strong>Note</strong>: The 2020 Crossfit Italian Showdown was supposed to be held at&nbsp;Play Riccione Hall in Italy.</p>\n\n<p>For more information and updates, please visit&nbsp;<a href=\"https://www.italianshowdown.com/coronavirus-update/\"> Italian Showdown site</a>.</p>', 'Crossfit Italian Showdown 2020  | Watch on onlinelivehdtv24', 'Sports event', 'Italy', 'Online', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"Crossfit Italian Showdown 2020 Riccione | Watch on onlinelivehdtv24\",\r\n  \"startDate\" : \"2020-04-24\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Play Riccione Hall\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Riccione\",\r\n      \"addressCountry\" : \"Italy\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/crossfit-italian-showdown-2020_2020-01-26_5e2d3d3c17ded.jpg\"\r\n}\r\n</script>', 'crossfit italian showdown 2020', 'Crossfit Italian Showdown, the most significant Crossfit-sanctioned event across Europe, will be moving to Italy to dignify the fittest in the world...Live streaming', '0', '2020-01-22 05:32:26', '2020-04-17 18:36:12'),
(19, '1', 2, 2, 10, 1, NULL, NULL, 13, '2020-07-03', '2020-07-05', 'Down Under CrossFit Championship 2020 | 22-24 May | Wollongong', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-07-03', '2020-07-05', '0', '0', 'Down Under CrossFit Championship 2020', 'down-under-crossfit-championship', 'down-under-crossfit-championship-2020_2020-01-26_5e2d3d96b03c8.jpg', 'win sports centre downunder crossfit championship', 'down-under-crossfit-championship-2020_2020-01-22_5e27e78a5cf30.jpg', 'down under crossfit champions 2020', NULL, '2020 Down Under CrossFit Championship Australia | Onlinelivehdtv24', 'Sports event', 'Australia', 'Wollongong', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"Down Under CrossFit Championship 2020\",\r\n  \"startDate\" : \"2020-05-22\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"WIN Sports & Entertainment Centres\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressRegion\" : \"Wollongong\",\r\n      \"addressCountry\" : \"Australia\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/down-under-crossfit-championship-2020_2020-01-26_5e2d3d96b03c8.jpg\"\r\n}\r\n</script>', 'down under crossfit championship,down under crossfit championship 2020', 'Meet Athletics on Down Under Crossfit Championship starting from May 22 to May 24, 2020, at Wollongong, Australia...Live streaming on onlinelivehdtv24.com', '0', '2020-01-22 06:11:22', '2020-05-06 09:26:54'),
(20, '1', 2, 2, 11, 1, NULL, NULL, 14, '2020-05-29', '2020-05-31', 'CrossFit Granite Games 2020 | 29-31 May | Apeldoorn', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-05-29', '2020-05-31', '0', '0', 'CrossFit Granite Games 2020', 'crossfit-granite-games-2020', 'crossfit-granite-games-2020_2020-01-26_5e2d3cdf1f904.jpg', 'de voorwaarts 55 crossfit granite games 2020', 'crossfit-granite-games-2020_2020-01-22_5e27e92e207c5.jpg', 'crossfit granite 2020', NULL, '2020 Crossfit Granite Games | Onlinelivehdtv24', 'Sports event', 'Netherlands', 'Apeldoorn', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"CrossFit Granite Games 2020\",\r\n  \"startDate\" : \"2020-05-29\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"De Voorwaarts 55\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Apeldoorn\",\r\n      \"addressCountry\" : \"Netherlands\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/crossfit-granite-games-2020_2020-01-26_5e2d3cdf1f904.jpg\"\r\n}\r\n</script>', 'granite crossfit games,2020 crossfit granite games', 'Granite games season is back. The official date was announced to held from 29 May to 31 May 2020. Watch the live streaming video here', '0', '2020-01-22 06:18:22', '2020-05-06 08:56:50'),
(21, '1', 3, NULL, 13, 1, NULL, NULL, 24, '2021-08-28', '2021-10-30', 'FA Cup final 2020 | 23 May | London', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2021-09-18', '2021-09-30', '0', '0', 'FA Cup final 2020', 'watch-fa-cup-final-live-stream-2020', 'fa-cup-final-2020_2020-01-27_5e2ebe054983f.jpg', '2020 fa final cup london', 'fa-cup-final-2020_2020-01-22_5e27ef6e416e3.jpg', 'wembly stadium fa final cup 2020', NULL, 'Watch FA Cup Live Stream on Onlinelivehdtv24 | May 23, 2020', 'Sports event', 'United Kingdom', 'London', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"FA Cup final 2020\",\r\n  \"startDate\" : \"2020-05-23\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Wembley Stadium\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressRegion\" : \"London\",\r\n      \"addressCountry\" : \"United Kingdom\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/fa-cup-final-2020_2020-01-27_5e2ebe054983f.jpg\"\r\n}\r\n</script>', 'watch fa cup live stream,fa cup final live streaming free', 'Online live FA CUP Final match 2020- Wembley stadium, London, England. Keep an eye on your favorite final match', '1', '2020-01-22 06:27:51', '2021-08-27 22:25:04'),
(22, '1', 3, NULL, 14, 1, NULL, NULL, 16, '2020-05-30', '2020-05-30', 'Watch .....UEFA Champions League Final 2020.....30 May.......Istanbul', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-05-30', '2020-05-30', '0', '0', 'UEFA Champions League Final 2020', 'uefa-champions-league-final-2020', 'uefa-champions-league-final-2020_2020-01-27_5e2ebe5a5c077.jpg', 'uefa 2020 champions league final ataturk', 'photo.jpg', 'champions league uefa olympic stadium', NULL, '2020 UEFA Champions League Final | Istanbul | Onlinelivehdtv24', 'Sports event', 'Turkey', 'Istanbul', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"UEFA Champions League Final 2020\",\r\n  \"startDate\" : \"2020-05-30\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Atatürk Olympic Stadium\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Istanbul\",\r\n      \"addressCountry\" : \"Turkey\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/uefa-champions-league-final-2020_2020-01-27_5e2ebe5a5c077.jpg\"\r\n}\r\n</script>', '2020 uefa champions league final', 'At Ataturk Olympic Stadium, Istanbul will host the 2020 UEFA champions league final match on May 30. Watch online live here', '0', '2020-01-22 06:48:24', '2020-05-06 09:02:48'),
(23, '1', 3, NULL, 13, 1, NULL, NULL, 17, '2021-06-11', '2021-07-11', 'UEFA European Championship 2020...........11 June - 11 July...2021..........London', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-06-11', '2021-07-11', '0', '0', 'UEFA European Championship 2020', 'uefa-european-championship-2020', 'uefa-european-championship-2020_2020-01-27_5e2ebe70aa346.jpg', 'uefa championship london 2020', 'uefa-european-championship-2020_2020-01-25_5e2c1582db6d4.jpg', 'uefa european champions 2020 london', '<p>UEFA European Championship 2020 is the 16th UEFA European Football Championship, scheduled to be held from June 12 to July 12, associated by the Union of European Football Associations (UEFA).&nbsp;</p>\n\n<p>The tournament will be played in 12 venues from 12 European countries. This time the video assistant referee (VAR) system will be introduced, and for the second time, Wembley Stadium will host the semi-finals and final match. The Stadio Olimpico will host the opening game in Rome, Italy, with the involvement of Turkey.&nbsp;</p>\n\n<h2><strong>UEFA Euro 2020 Groups:</strong></h2>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td><strong>Group A&nbsp; &nbsp;&nbsp;</strong></td>\n			<td><strong>&nbsp;Group B</strong></td>\n			<td><strong>Group C&nbsp; &nbsp;</strong></td>\n			<td><strong>Group D</strong></td>\n			<td><strong>Group E&nbsp;</strong></td>\n			<td><strong>Group F</strong></td>\n		</tr>\n		<tr>\n			<td>\n			<p>Turkey</p>\n\n			<p>Italy</p>\n\n			<p>Wales</p>\n\n			<p>Switzerland</p>\n			</td>\n			<td>\n			<p>Denmark</p>\n\n			<p>Finland</p>\n\n			<p>Belgium</p>\n\n			<p>Russia</p>\n			</td>\n			<td>\n			<p>Netherlands</p>\n\n			<p>Ukraine</p>\n\n			<p>Austria</p>\n\n			<p>Play-off Winner D</p>\n			</td>\n			<td>\n			<p>England</p>\n\n			<p>Croatia</p>\n\n			<p>Play-off winner C</p>\n\n			<p>Czech Republic</p>\n			</td>\n			<td>\n			<p>Spain</p>\n\n			<p>Sweden</p>\n\n			<p>Poland</p>\n\n			<p>Play-off winner B</p>\n			</td>\n			<td>\n			<p>Play-off winner A</p>\n\n			<p>Portugal</p>\n\n			<p>France</p>\n\n			<p>Germany</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<h2>&nbsp;</h2>\n\n<h2><strong>Euro 2020 Match Schedule:</strong></h2>\n\n<h3><strong>Group Stage</strong></h3>\n\n<p>&nbsp;</p>\n\n<p><strong>Friday 12 June&nbsp;&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n\n<blockquote>\n<p><strong>Group A</strong>: &nbsp;Turkey v Italy&nbsp;</p>\n\n<p>21:00, Rome</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Saturday 13 June</strong></p>\n\n<blockquote>\n<p><strong>Group A</strong>: Wales v Switzerland</p>\n\n<p>15:00, Baku</p>\n\n<p><strong>Group B</strong>: Denmark v Finland</p>\n\n<p>18:00, Copenhagen</p>\n\n<p><strong>Group B</strong>: Belgium v Russia</p>\n\n<p>21:00, St Petersburg</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Sunday 14 June</strong></p>\n\n<blockquote>\n<p><strong>Group D</strong>: England v Croatia</p>\n\n<p>15:00,&nbsp;London</p>\n\n<p><strong>Group C</strong>: Austria v Play-off winner D or A</p>\n\n<p>18:00,&nbsp;Bucharest</p>\n\n<p><strong>Group C</strong>: Netherlands v Ukraine</p>\n\n<p>21:00, Amsterdam</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Monday 15 June</strong></p>\n\n<blockquote>\n<p><strong>Group D</strong>: Play-off winner C v Czech Republic</p>\n\n<p>15:00, Glasgow</p>\n\n<p><strong>Group E</strong>: Poland v Play-off winner B&nbsp;</p>\n\n<p>18:00, Dublin</p>\n\n<p><strong>Group E</strong>: Spain v Sweden</p>\n\n<p>21:0,&nbsp;&nbsp;Bilbao</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Tuesday 16 June</strong></p>\n\n<blockquote>\n<p><strong>Group F</strong>: Play-off winner A or D v Portugal</p>\n\n<p>18:00, Budapest</p>\n\n<p><strong>Group F</strong>: France v Germany</p>\n\n<p>21:00, Munich</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Tuesday 16 June</strong></p>\n\n<blockquote>\n<p><strong>Group F</strong>: Play-off winner A or D v Portugal</p>\n\n<p>18:00, Budapest</p>\n\n<p><strong>Group F</strong>: France v Germany</p>\n\n<p>21:00, Munich</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Wednesday 17 June</strong></p>\n\n<blockquote>\n<p><strong>Group B</strong>: Finland v Russia</p>\n\n<p>15:00, St Petersburg</p>\n\n<p><strong>Group A:</strong> Turkey v Wales&nbsp;</p>\n\n<p>18:00, Baku</p>\n\n<p><strong>Group A</strong>: Italy v Switzerland</p>\n\n<p>21:00, Rome</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Thursday 18 June</strong></p>\n\n<blockquote>\n<p><strong>Group C</strong>: Ukraine v Play-off winner D or A</p>\n\n<p>15:00, Bucharest</p>\n\n<p><strong>Group B</strong>: Denmark v Belgium</p>\n\n<p>18:00, Copenhagen</p>\n\n<p><strong>Group C</strong>: Netherlands v Austria</p>\n\n<p>21:00, Amsterdam</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Friday 19 June</strong></p>\n\n<blockquote>\n<p><strong>Group E</strong>: Sweden v Play-off winner B</p>\n\n<p>15:00, Dublin</p>\n\n<p><strong>Group D</strong>: Croatia v Czech Republic</p>\n\n<p>18:00, Glasgow</p>\n\n<p><strong>Group D</strong>: England v Play-off winner C</p>\n\n<p>21:00, London</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Saturday 20 June</strong></p>\n\n<blockquote>\n<p><strong>Group F</strong>: Play-off winner A or D v France</p>\n\n<p>15:00, Budapest</p>\n\n<p><strong>Group F</strong>: Portugal v Germany</p>\n\n<p>18:00, Munich</p>\n\n<p><strong>Group E</strong>: Spain v Poland</p>\n\n<p>21:00, Bilbao</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Sunday 21 June</strong></p>\n\n<blockquote>\n<p><strong>Group A</strong>: Italy v Wales</p>\n\n<p>18:00, Rome</p>\n\n<p><strong>Group A</strong>: Switzerland v Turkey</p>\n\n<p>18:00, Baku</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Monday 22 June</strong></p>\n\n<blockquote>\n<p><strong>Group C</strong>: Play-off winner D or A v Netherlands</p>\n\n<p>18:00, Amsterdam</p>\n\n<p><strong>Group C</strong>: Ukraine v Austria</p>\n\n<p>18:00, Bucharest</p>\n\n<p><strong>Group B</strong>: Russia v Denmark</p>\n\n<p>21:00, Copenhagen</p>\n\n<p><strong>Group B</strong>: Finland v Belgium</p>\n\n<p>21:00, St Petersburg</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Tuesday 23 June</strong></p>\n\n<blockquote>\n<p><strong>Group D</strong>: Czech Republic v England</p>\n\n<p>21:00, London</p>\n\n<p><strong>Group D</strong>: Croatia v Play-off winner C</p>\n\n<p>21:00, Glasgow</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Wednesday 24 June</strong></p>\n\n<blockquote>\n<p><strong>Group E</strong>: Play-off winner B v Spain</p>\n\n<p>18:00, Bilbao</p>\n\n<p><strong>Group E</strong>: Sweden v Poland</p>\n\n<p>18:00, Dublin</p>\n\n<p><strong>Group F</strong>: Germany v Play-off winner A or D</p>\n\n<p>21:00, Munich</p>\n\n<p><strong>Group F</strong>: Portugal v France</p>\n\n<p>21:00, Budapest</p>\n</blockquote>\n\n<ul>\n	<li>From each group top two plus four best third-placed teams go through Knockout phrase</li>\n</ul>\n\n<h3><strong>KNOCKOUT PHASE</strong></h3>\n\n<p><strong>Round of 16</strong></p>\n\n<p><strong>Saturday 27 June</strong></p>\n\n<blockquote>\n<p>&nbsp;<a href=\"https://www.uefa.com/uefaeuro-2020/match/2024478/\">2A v 2B</a> (18:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/amsterdam/\">Amsterdam</a>)</p>\n\n<p>&nbsp;<a href=\"https://www.uefa.com/uefaeuro-2020/match/2024477/\">1A v 2C</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/london/\">London</a>)</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Sunday 28 June</strong></p>\n\n<blockquote>\n<p><a href=\"https://www.uefa.com/uefaeuro-2020/match/2024480/\">1C v 3D/E/F</a> (18:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/budapest/\">Budapest</a>)</p>\n\n<p>&nbsp;<a href=\"https://www.uefa.com/uefaeuro-2020/match/2024479/\">1B v 3A/D/E/F</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/bilbao/\">Bilbao</a>)</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p><strong>Monday 29 June</strong></p>\n\n<blockquote>\n<p>&nbsp;<a href=\"https://www.uefa.com/uefaeuro-2020/match/2024482/\">2D v 2E</a> (18:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/copenhagen/\">Copenhagen</a>)</p>\n\n<p><a href=\"https://www.uefa.com/uefaeuro-2020/match/2024481/\">1F v 3A/B/C</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/bucharest/\">Bucharest</a>)</p>\n</blockquote>\n\n<p><strong>Tuesday 30 June</strong></p>\n\n<blockquote>\n<p>&nbsp;<a href=\"https://www.uefa.com/uefaeuro-2020/match/2024484/\">1D v 2F</a> (18:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/dublin/\">Dublin</a>)</p>\n\n<p>&nbsp;<a href=\"https://www.uefa.com/uefaeuro-2020/match/2024483/\">1E v 3A/B/C/D</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/glasgow/\">Glasgow</a>)</p>\n</blockquote>\n\n<h3>&nbsp;</h3>\n\n<h3><strong>Quarter-finals</strong></h3>\n\n<p><strong>Friday 3 July</strong></p>\n\n<blockquote>\n<p>QF1: <a href=\"https://www.uefa.com/uefaeuro-2020/match/2024485/\">Winner 6 v Winner 5</a> (18:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/saint-petersburg/\">St Petersburg</a>)</p>\n\n<p>QF2: <a href=\"https://www.uefa.com/uefaeuro-2020/match/2024486/\">Winner 4 v Winner 2</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/munich/\">Munich</a>)</p>\n</blockquote>\n\n<p><strong>Saturday 4 July</strong></p>\n\n<blockquote>\n<p>QF3: <a href=\"https://www.uefa.com/uefaeuro-2020/match/2024488/\">Winner 3 v Winner 1</a> (18:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/baku/\">Baku</a>)</p>\n\n<p>QF4: <a href=\"https://www.uefa.com/uefaeuro-2020/match/2024487/\">Winner 8 v Winner 7</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/rome/\">Rome</a>)</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<h3><strong>Semi-finals</strong></h3>\n\n<blockquote>\n<p><strong>Tuesday 7 July</strong></p>\n\n<p>SF1: <a href=\"https://www.uefa.com/uefaeuro-2020/match/2024489/\">Winner QF2 v Winner QF1</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/london/\">London</a>)</p>\n\n<p><strong>Wednesday 8 July</strong></p>\n\n<p>SF2: <a href=\"https://www.uefa.com/uefaeuro-2020/match/2024490/\">Winner QF4 v Winner QF3</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/london/\">London</a>)</p>\n</blockquote>\n\n<h3><strong>Final</strong></h3>\n\n<blockquote>\n<p><strong>Sunday 12 July</strong></p>\n\n<p><a href=\"https://www.uefa.com/uefaeuro-2020/match/2024491\">Winner SF1 v Winner SF2</a> (21:00, <a href=\"https://www.uefa.com/uefaeuro-2020/event-guide/london/\">London</a>)</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p>Source: <a href=\"https://www.uefa.com/uefaeuro-2020/news/0254-0d41684d1216-06773df7faed-1000--euro-2020-all-the-fixtures/\">UEFA</a></p>', 'UEFA European Football Championship Final | England 2020 | Live', 'Sports event', 'United Kingdom', 'London', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"UEFA European Championship 2020\",\r\n  \"startDate\" : \"2020-06-12\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Wembley Stadium\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"London\",\r\n      \"addressCountry\" : \"United Kingdom\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/uefa-european-championship-2020_2020-01-27_5e2ebe70aa346.jpg\"\r\n}\r\n</script>', '2020 uefa european football championship final,euro 2020 england fixtures', 'Euro 2020 final will be held at Wembley stadium in England. Fans will witness an exciting match; the new European heroes will be delegated on Sunday 12 July.', '1', '2020-01-22 06:51:48', '2020-05-06 09:18:51'),
(24, '1', 4, NULL, 16, 1, NULL, NULL, 25, '2020-04-15', '2020-04-19', '2020 FEI World Cup™ Finals | 15-19 April | Las vegas', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2020-04-15', '2020-04-19', '0', '0', '2020 FEI World Cup™ Finals', 'fei-world-cup-finals-las-vegas', '2020-fei-world-cup-finals_2020-01-27_5e2ebea89e134.jpg', 'las vegas fei world cup final 2020', '2020-fei-world-cup-finals_2020-01-22_5e27f34c63b7d.jpg', 'fei world cup 2020', '<h2>About 2020 FEI World Cup<strong>&trade; </strong>Finals</h2>\n\n<p>You Ain&#39;t Seen Nothing Yet- along with the theme, and the 2020 FEI World Cup&trade; Final is back again to the fans at the Thomas &amp; Mack Center in Las Vegas, USA. Starting from April 15 to 19, you are going to witness the world&#39;s great equestrian annual individual jumping and dressage championships 2020.&nbsp;</p>\n\n<p>The grand opening will start with an extraordinary Rock Orchestra performed by both jumping and dressage, and The center will show a non-stop video loop on the World Cup TV. From beginning to finish, the fans will be proud to have a close look at the breathtaking performances by Steve Amerson, Jabbawockeez, and many others.&nbsp;</p>\n\n<p>It is the seventh time, Las Vegas, the &quot;Entertainment capital of the world&quot; will host the finals to vie for the titles of FEI Dressage World Cup&trade; and Longines Jumping World Cup&trade; Champions. When in 2020 and 2003, the finals were held only for the jumping; 2005, 2007, 2009, and 2015 finals were hosted for both jumping and dressage finals.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>2020 FEI World Cup&trade; Final Event Tentative Schedule (Pacific time)</strong></h3>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>&nbsp;Wednesday April 15</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td><strong>&nbsp;9:30am&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></td>\n			<td>&nbsp;Longines FEI Jumping World Cup&trade; Warm-Up&nbsp;&nbsp;</td>\n		</tr>\n		<tr>\n			<td><strong>&nbsp;1:40pm</strong></td>\n			<td>&nbsp;FEI Dressage World Cup&trade; Warm-Up</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>&nbsp;Thursday April 16</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td><strong>&nbsp;12:00pm</strong></td>\n			<td>&nbsp;FEI Dressage World Cup&trade; Grand Prix</td>\n		</tr>\n		<tr>\n			<td>&nbsp;<strong>7:00pm</strong></td>\n			<td>&nbsp;Longines FEI Jumping World Cup&trade; Final&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>&nbsp;Friday April 17&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td>&nbsp;<strong>8:30 a.m.&nbsp;</strong></td>\n			<td>&nbsp;FEI Dressage World Cup&trade; Freestyle Rehearsal</td>\n		</tr>\n		<tr>\n			<td>&nbsp;<strong>1:00 p.m.&nbsp;</strong></td>\n			<td>&nbsp;Devoucoux Dressage Showcase</td>\n		</tr>\n		<tr>\n			<td>&nbsp;<strong>7:00 p.m.</strong>&nbsp;</td>\n			<td>&nbsp;Longines FEI Jumping World Cup&trade; Final</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>Saturday April 18&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td><strong>&nbsp;12:00pm</strong></td>\n			<td>&nbsp;Las Vegas Jumping Grand Prix</td>\n		</tr>\n		<tr>\n			<td>&nbsp;<strong>7:00pm</strong></td>\n			<td>&nbsp;FEI Dressage World Cup&trade; Final (Freestyle)</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>&nbsp;Sunday&nbsp; April 19</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td>&nbsp;<strong>12:00 p.m</strong>.</td>\n			<td>&nbsp;Longines FEI Jumping World Cup&trade; Final</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 'Las Vegas World Cup- Schedule | 2020 FEI World Cup Finals', 'Sports event', 'United States', 'Las Vegas, Nevada', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"2020 FEI World Cup™ Finals\",\r\n  \"startDate\" : \"2020-04-15\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Thomas & Mack Center\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Las Vegas, Nevada\",\r\n      \"addressCountry\" : \"United States\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/2020-fei-world-cup-finals_2020-01-27_5e2ebea89e134.jpg\"\r\n}\r\n</script>', 'fei world cup finals,las vegas world cup,2020 fei world cup finals', 'Longines FEI Jumping World Cup™ Final and FEI Dressage World Cup™ Final-upcoming thrilling five days show on April at Thomas & Mack Center.', '0', '2020-01-22 07:00:40', '2020-04-13 05:25:06'),
(25, '1', 4, NULL, 17, 1, NULL, NULL, 20, '2020-07-15', '2020-07-19', 'Dublin Horse Show 2020 | 15 -17 July | Dublin', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=f101ff177eca2e1d44683ce4b724eac1&_signt=1583298852', '2020-07-15', '2020-07-19', '0', '0', 'Dublin Horse Show 2020', 'rds-dublin-horse-show', 'dublin-horse-show-2020_2020-01-27_5e2ebec2200cd.jpg', 'RDS main area dublin horse show 2020', 'dublin-horse-show-2020_2020-01-22_5e27f4f364497.png', 'dublin horse show ireland 2020', NULL, 'RDS Dublin Horse Show | 15-19 July | Onlinelivehdtv24', 'Sports event', 'Ireland', 'Dublin', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"Dublin Horse Show 2020\",\r\n  \"startDate\" : \"2020-07-15\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"RDS Main Arena\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Dublin\",\r\n      \"addressCountry\" : \"Ireland\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/dublin-horse-show-2020_2020-01-27_5e2ebec2200cd.jpg\"\r\n}\r\n</script>', 'rds dublin horse show,horse show dublin', 'Horse Show Dublin, a five-day-long pinnacle event, will take place at RDS Main Arena, Ireland, that consolidates game, style, and elegance. Watch online live here', '0', '2020-01-22 07:08:35', '2020-05-06 09:29:11'),
(26, '1', 4, NULL, 18, 1, NULL, NULL, 21, '2020-10-01', '2020-10-04', '2020 Open Horse Show | 01-04 October | Hants County', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=f101ff177eca2e1d44683ce4b724eac1&_signt=1583298852', '2020-10-01', '2020-10-04', '0', '0', '2020 Open Horse Show', '2020-open-horse-show', '2020-open-horse-show_2020-01-27_5e2ebeddbc0f9.jpg', '2020 canada open horse show', '2020-open-horse-show_2020-01-22_5e27f706621ee.jpeg', 'hants county open horse show 2020', NULL, '2020 Open Horse Show | 01-04 October | Hants County', 'Sports event', 'Canada', 'Hants County', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"2020 Open Horse Show\",\r\n  \"startDate\" : \"2020-10-01\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Exhibition Arena\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Hants County\",\r\n      \"addressCountry\" : \"Canada\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/2020-open-horse-show_2020-01-27_5e2ebeddbc0f9.jpg\"\r\n}\r\n</script>', '2020 Open Horse Show', NULL, '1', '2020-01-22 07:17:26', '2020-03-04 05:30:53');
INSERT INTO `events` (`id`, `match_condition`, `category_id`, `subcategory_id`, `studium_id`, `user_id`, `clubone_id`, `clubtwo_id`, `single_club`, `event_start_date`, `event_end_date`, `video_link`, `detalis_link`, `match_start_date`, `match_end_date`, `score_one`, `score_two`, `title`, `title_slug`, `cover_image`, `cover_image_alt`, `thumbnail_image`, `thumbnail_image_alt`, `description`, `seo_title`, `event_type`, `event_country`, `event_city`, `total_event`, `schema_tag`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(27, '1', 4, NULL, 19, 1, NULL, NULL, 22, '2020-10-07', '2020-10-11', 'Horse of the Year Show 2020 | 07-11 July | Marston Green', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=e2b12ec368ecd334c15dd6f7e104656a&_signt=1583299972', '2020-10-07', '2020-10-11', '0', '0', 'HOYS Live Stream <<Horse of the Year Show 2020>>', 'horse-of-the-year-show', 'horse-of-the-year-show-2020_2020-01-27_5e2ebef69ef30.jpg', 'horse of the year 2020 marston green', 'horse-of-the-year-show-2020_2020-01-25_5e2c1865aa59a.jpg', 'NEC horse of the year show 2020', '<p>&nbsp;</p>\n\n<h2><strong>Event details:&nbsp;</strong></h2>\n\n<p>2020 Horse of the Year Show is coming back to the NEC Arena ( National Exhibition Centre), Marston Green, the UK from Wednesday 7- Sunday 11 October. It is the biggest equestrian final show of the year that aspires all horse owners and riders to win a prestigious career. With a five days expansion, HOYS will host the grand celebration for the mad horsey audience.&nbsp;</p>\n\n<p>Horse owners and riders will compete in showing classes throughout the country between March and September to get the &ldquo;golden ticket&rdquo; for the main event. &nbsp;<br />\nMarking the end of the equestrian season, the HOYS fantastically celebrates the champions and digging out the spanking talent in the year. No-miss to capture the crowning and breathtaking moments of the longest standing horse show in the history</p>\n\n<h3><strong>History:&nbsp;</strong></h3>\n\n<p>Since 1949, Horse of the Year Show started its thrilling journey drawing the special event during the equestrian season. The name behind the idea for the horse of the year show is Captain Tony Collings, and the plan was agreed by Colonel Mike Ansell and Colonel VDS Williams, the then chairman of the British Show Jumping Association and British Horse Society.</p>\n\n<p>To follow the concept, &ldquo;Le Jumping,&rdquo; a renowned indoor show in Paris was planned. The reaction of the audience was so surprising that William and Ansell decided to transpose the show for a British audience. Afterward, it turned out a BSJA jumping show, and the prize winners at major shows during the equestrian season would compete from each section in the &ldquo;Horse of the Year.&rdquo; Later on, since 1997, Grandstand Media Ltd. has been organizing the event. Though, in 2002, HOYS resided over 40 years in the Wembley area, was moved to the NEC Arena, Birmingham.&nbsp;<br />\n&nbsp;</p>', 'HOYS (Horse of the Year Show) Live Stream 2020 | Onlinelivehdtv24', 'Sports event', 'United Kingdom', 'Marston Green', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"Horse of the Year Show 2020\",\r\n  \"startDate\" : \"2020-10-07\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"NEC, National Exhibition Centre\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Marston Green\",\r\n      \"addressCountry\" : \"United Kingdom\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/horse-of-the-year-show-2020_2020-01-27_5e2ebef69ef30.jpg\"\r\n}\r\n</script>', 'horse of the year show 2020,hoys live stream,horse of the year show live stream', 'Join us at the horse of the year show 2020, NEC, London from Wednesday 7- Sunday 11 October. Check event details, watch live stream video on our channel.', '1', '2020-01-22 07:20:52', '2020-06-19 10:13:47'),
(28, '1', 5, NULL, 20, 1, NULL, NULL, 23, '2020-05-30', '2020-05-31', 'Watch | 2020 World Rugby Sevens Series   |  2020-05-30    |  The Stade Jean-Bouin', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=e2b12ec368ecd334c15dd6f7e104656a&_signt=1583299972', '2020-05-30', '2020-05-31', '0', '0', '2020 World Rugby Sevens Series', 'hsbc-rugby-sevens-live-stream-free', '2020-world-rugby-sevens-series_2020-01-27_5e2ebf10d5419.jpg', '2020 world rugby seven series the stade jean bouin', '2020-world-rugby-sevens-series_2020-01-22_5e27f8a6d095d.jpg', 'paris world rugby seven 2020', '<p>World Rugby Seven Series is one of the leading international rugby competitions organized by World Rugby since 1999-2000 and every four years. It is the 21st annual series of national men&rsquo;s rugby sevens teams. The 2019-2020 HSBC rugby sevens are scheduled from 5 December 2019 to 31 May 2020, with sixteen nations competing with each other in each event.&nbsp;</p>\n\n<p>The team will play in four groups consisting of four pools on each side. Two teams from each pool, that is, in total, eight teams from four will tie for the World Rugby Cup. The first three teams will be honored with gold, silver, and bronze medals. Based on the aggregated points gained across all the events, the winner will be picked up during the series. The <a href=\"https://en.wikipedia.org/wiki/Stade_Jean-Bouin\">Stade Jean-Bouin</a> stadium in Paris will host the final round of the World Rugby Seven Series for two days dated on 30 -31 May 2020. <strong>Watch live Streaming free <a href=\"https://look.udncoeln.com/offer?prod=604&amp;ref=5149664\">on here</a></strong></p>\n\n<p>&nbsp;</p>\n\n<p>For 2019-2020, the qualified fifteen core teams will play off for the tournament. The participants&#39; countries:&nbsp;</p>\n\n<p><strong><em>Argentina, Australia, Canada, England, Fiji, France, Ireland, Kenya, New Zealand, Samoa, Scotland, South Africa, Spain, United States, Wales.&nbsp;&nbsp;</em></strong></p>\n\n<p>&nbsp;</p>\n\n<p>In the HSBC Rugby season of 2019-2020, the Tour Venues are:</p>\n\n<p><strong>Date&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;................City/ Country----------------------------Stadium</strong></p>\n\n<p>&nbsp;</p>\n\n<p><ins>5&ndash;7 December 2019&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dubai, Dubai&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The Sevens</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>13&ndash;15 December 2019&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Cape Town, South Africa&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;Cape Town Stadium</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>25&ndash;26 January 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hamilton, New Zealand&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;FMG Stadium Waikato</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>1&ndash;2 February 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sydney, Australia&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bankwest Stadium</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>29 Feb &ndash; 1 Mar 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Los Angeles, United States&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dignity Health Sports Park</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>7&ndash;8 March 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Vancouver, Canada&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BC Place</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>3&ndash;5 April 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hong Kong,Hong Kong&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hong Kong Stadium</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>11&ndash;12 April 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Singapore, Singapore&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; National Stadium</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>23&ndash;24 May 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;London, England&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Twickenham Stadium</ins></p>\n\n<p>&nbsp;</p>\n\n<p><ins>30&ndash;31 May 2020&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Paris, France&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Stade Jean-Bouin</ins></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Source: <a href=\"https://www.world.rugby/sevens-series/standings/mens\">World.rugby</a></p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"https://en.wikipedia.org/wiki/2019%E2%80%9320_World_Rugby_Sevens_Series\">Wikipedia</a></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '2020 Rugby Sevens Live Stream Free | Onlinelivehdtv24', 'Sports event', 'France', 'Paris', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"2020 World Rugby Sevens Series\",\r\n  \"startDate\" : \"2020-05-30\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"the Stade Jean-Bouin\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Paris\",\r\n      \"addressCountry\" : \"France\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/2020-world-rugby-sevens-series_2020-01-27_5e2ebf10d5419.jpg\",\r\n  \"description\" : \"World Rugby Seven Series is one of the leading international rugby competitions organized by World Rugby since 1999-2000 and every four years. It is the 21st annual series of national men’s rugby sevens teams.\"\r\n}\r\n</script>', 'rugby sevens live stream free,hsbc sevens live streaming', 'Free Live streaming HSBC rugby sevens series 2020. It is the 21st annual series of rugby sevens tournaments. The final round will be held in Paris.', '0', '2020-01-22 07:24:22', '2020-05-06 09:13:57'),
(29, '1', 2, 2, 21, 1, NULL, NULL, 10, '2020-03-06', '2020-03-08', 'Brazil Crossfit Championship 2020 | 06-08 March | State of São Paulo', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=f101ff177eca2e1d44683ce4b724eac1&_signt=1583298852', '2020-03-06', '2020-03-08', '0', '0', 'Brazil Crossfit Championship 2020', 'brazil-crossfit-championship-2020', 'brazil-crossfit-championship-2020_2020-01-26_5e2d3ca084ac4.jpg', '2020 ginasio do ibirapuera crossfit championship brazil', 'brazil-crossfit-championship-2020_2020-01-22_5e27fe685e1f9.jpg', 'brazil crossfit championchip sao paulo 2020', '<p>The Brazil CrossFit&reg; Championship (BCC) is an annual CrossFit competition that will start from March 6 to March 8, 2020, at Sao Paulo, Brazil. The qualification for the Championships takes place (between October 10 and November 11) in 2019 by accomplishing five workouts as same as the 2020 CrossFit games open and need to submit a video by each athlete</p>\n\n<p>Qualified top 26 individual athletes (male &amp; female) and top 13 teams, in total, three divisions will compete in this CrossFit championship 2020 that lead the winners to the next 2020 Reebok Crossfit Games in Madison, WI, USA.</p>\n\n<p>&nbsp;</p>', 'Brazil Crossfit Championship (BCC) 2020 São Paulo | onlinelivehdtv24', 'Sports event', 'Brazil', 'State of São Paulo', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"Brazil Crossfit Championship (BCC) 2020 São Paulo | Onlinelivehdtv24\",\r\n  \"startDate\" : \"2020-03-06\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Ginásio do Ibirapuera\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressRegion\" : \"State of São Paulo\",\r\n      \"addressCountry\" : \"Brazil\"\r\n    }\r\n  },\r\n  \"image\" : \"http://onlinelivehdtv24.com/uploads/brazil-crossfit-championship-2020_2020-01-26_5e2d3ca084ac4.jpg\",\r\n  \"description\" : \"Qualified top individuals (male & female) and top teams will compete in the Brazil cross fit champion starting on 6 March. Don\'t miss to Watch live stream here.\"\r\n}\r\n</script>', 'brazil crossfit championship,bcc crossfit,cross fit champion,brazil crossfit championship 2020', 'Qualified top individuals (male & female) and top teams will compete in the Brazil cross fit champion starting on 6 March. Don\'t miss to Watch live stream here.', '1', '2020-01-22 07:48:56', '2020-03-05 17:10:31'),
(31, '2', 3, NULL, 22, 1, 26, 27, NULL, '2020-05-02', '2020-05-02', 'Watch......Liverpool vs. Arsenal.....02 May......London', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=e2b12ec368ecd334c15dd6f7e104656a&_signt=1583299972', '2020-05-02', '2020-05-02', '0', '0', 'Liverpool vs. Arsenal | English Premier League 2020', 'premier-league-arsenal-vs-liverpool', 'liverpool-vs-arsenal-2020_2020-02-04_5e394a225d641.jpg', 'English league Arsenal Liverpool match May 2020', 'liverpool-vs-arsenal-2020_2020-02-04_5e394a2261bbe.jpg', 'premier league liverpool vs arsenal', NULL, 'Premier League Arsenal vs Liverpool | May 2 | Onlinelivehdtv24', 'Sports event', 'United Kingdom', 'London', NULL, NULL, 'premier league arsenal vs liverpool', 'Liverpool vs Arsenal English premier league stream live on May 2, 2020 at London. Watch online on here', '0', '2020-02-04 10:40:34', '2020-04-17 18:38:14'),
(32, '2', 3, NULL, 23, 1, 26, 28, NULL, '2020-05-09', '2020-05-09', 'Watch....Liverpool vs. Chelsea ....09 May.....Liverpool', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=e2b12ec368ecd334c15dd6f7e104656a&_signt=1583299972', '2020-05-09', '2020-05-09', '0', '0', 'Liverpool vs. Chelsea | English Premier League 2020', 'liverpool-vs-chelsea-anfield', 'liverpool-vs-chelsea-2020_2020-02-04_5e394d94c3748.jpg', 'Chelsea liverpool 2020 premier league anfield', 'liverpool-vs-chelsea-2020_2020-02-04_5e394d94c3954.jpg', 'liverpool chelsea footbal engish premier league', NULL, 'Liverpool vs Chelsea Anfield | Onlinelivehdtv24', 'Sports event', 'United Kingdom', 'Liverpool', NULL, NULL, 'liverpool vs chelsea anfield', 'Liverpool vs Chelsea live streaming online on May 09/2020 at Anfield, England. Watch English premier league football match.', '0', '2020-02-04 10:55:16', '2020-04-17 18:38:32'),
(33, '2', 3, NULL, 24, 1, 26, 29, NULL, '2020-05-17', '2020-05-17', 'Watch.........Liverpool vs. Newcastle United........17 May........Newcastle', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=e2b12ec368ecd334c15dd6f7e104656a&_signt=1583299972', '2020-05-17', '2020-05-17', '0', '0', 'Liverpool vs. Newcastle United | English Premier League 2020', 'watch-liverpool-vs-newcastle-live', 'liverpool-vs-newcastle-united-2020_2020-02-04_5e394feb42c45.jpg', 'liverpool Newcastle 2020 premier league', 'liverpool-vs-newcastle-united-2020_2020-02-04_5e394feb42e36.jpg', 'English premier league liverpool vs newcastle', NULL, 'Watch Liverpool vs Newcastle Live | Onlinelivehdtv24', 'Sports event', 'United Kingdom', 'Newcastle, England', NULL, NULL, 'watch liverpool vs newcastle live', 'Liverpool vs Newcastle live stream match at St James\' park on may 17, 2020. Watch online on onlinelivehdtv24.com.', '0', '2020-02-04 11:05:15', '2020-04-17 18:39:05'),
(35, '1', 4, NULL, 18, 1, NULL, NULL, 30, '2020-09-18', '2020-09-20', 'Hants County Exhibition 2020 | 18 -20 September | Hants County', 'https://signup.hugestfun.com/en/html/sf/registration/eone.html#&sf=eone&lng=en&m=sports&ref=5149664&prod=604&_sign=e2b12ec368ecd334c15dd6f7e104656a&_signt=1583299972', '2020-09-18', '2020-09-20', '0', '0', 'Hants County Exhibition 2020', 'hants-county-exhibition-2020', 'hants-county-exhibition-2020_2020-02-13_5e451fe3b6170.png', 'Hants County Exhibition nova scotia 2020', 'hants-county-exhibition-2020_2020-02-13_5e451fe3b64f2.png', 'Hants county Exhibition 2020', NULL, 'Hants County Exibition 2020 | Nova Scotia |  Onlinelivehdtv24', 'Sports event', 'Canada', 'Hants County', NULL, '<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\" : \"http://schema.org\",\r\n  \"@type\" : \"Event\",\r\n  \"name\" : \"Hants County Exhibition 2020\",\r\n  \"startDate\" : \"2020-09-18\",\r\n  \"location\" : {\r\n    \"@type\" : \"Place\",\r\n    \"name\" : \"Exhibition Arena\",\r\n    \"address\" : {\r\n      \"@type\" : \"PostalAddress\",\r\n      \"addressLocality\" : \"Hants County\",\r\n      \"addressCountry\" : \"Canada\"\r\n    }\r\n  },\r\n  \"image\" : \"https://www.onlinelivehdtv24.com/uploads/hants-county-exhibition-2020_2020-02-13_5e451fe3b6170.png\"\r\n}\r\n</script>', 'hants county exhibition nova scotia', 'Hants County Exhibition is going to celebrate its 255 years at Exhibition Arena Windsor, Canada. Keep counting the day- Sept 18...live streaming on onlinelivehdtv24.com', '1', '2020-02-12 04:49:13', '2020-03-04 05:37:03'),
(36, '1', 2, 1, 1, 1, NULL, NULL, 1, '2020-07-29', '2020-08-02', NULL, NULL, '2020-07-29', '2020-08-02', '0', '0', 'Reebok Crossfit Game', 'reebok-crossfit-game', 'reebok-crossfit-game_2020-03-04_5e5f4c91d2111.jpg', NULL, 'reebok-crossfit-game_2020-03-04_5e5f4c91d490d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2020-03-04 06:37:05', '2020-03-04 06:37:23'),
(37, '1', 5, NULL, 25, 1, NULL, NULL, 31, '2021-02-06', '2021-03-20', '2021 Six Nations Championship | February 06- March 03 | 2021 | Live stream', 'http://look.udncoeln.com/offer?prod=604&ref=5149664', '2021-02-06', '2021-03-20', '0', '0', '2021 Six Nations Championship', 'six-nations-championship-2021', '2021-six-nations-championship_2020-04-02_5e858b0688f20.jpg', 'six nations rugby cup 2021', '2021-six-nations-championship_2020-04-02_5e858b0689256.jpg', 'live stream six nations rugby 2021', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Countries</strong>:&nbsp;England, France, Ireland, Italy, Scotland, Wales</p>\n\n<p><strong>Stadium/Venue</strong>: Twickenham Stadium, Stade de France, Aviva Stadium, Stadio Olimpico, Murrayfield Stadium, Millennium Stadium</p>\n\n<p>&nbsp;</p>', '2021 Six Nations Championship | Live Stream | Onlinelivehdtv24', 'Sports event', 'England, France, Ireland, Italy, Scotland, Wales', 'London, Saint-Denis, Dublin, Rome, Edinburgh, Cardiff', NULL, NULL, '2021 Six Nations Championship', NULL, '1', '2020-04-02 06:49:42', '2021-02-03 07:27:47'),
(38, '1', 1, NULL, 26, 1, NULL, NULL, 32, '2021-08-06', '2021-08-15', '2021 World Athletics Championships | Fri, Aug 6, 2021 – Sun, Aug 15, 2021 | Live Stream', NULL, '2021-08-06', '2021-08-15', '0', '0', '2021 World Athletics Championships', '2021-world-athletics-championships', '2021-world-athletics-championships_2020-04-02_5e85f45ac8a3a.jpg', 'World athletics championship 2021 Oregon', '2021-world-athletics-championships_2020-04-02_5e85f45ac8da5.jpg', 'iaaf championship Eugene', NULL, '2021 World Athletics Championships |  Live Stream | Onlinelivehdtv24', 'Sports event', 'Oregon', 'Eugene', NULL, NULL, 'oregon 21 track and field,2021 World Athletics Championships', NULL, '1', '2020-04-02 14:19:06', '2020-04-02 14:40:37'),
(39, '1', 1, NULL, 27, 1, NULL, NULL, 33, '2021-03-20', '2021-03-20', '2021 World Athletics Cross Country Championships | Saturday, March 20, 2021 | Live Stream', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2021-03-20', '2021-03-20', '0', '0', '2021 World Athletics Cross Country Championships', '2021-world-athletics-cross-country-championships', '2021-world-athletics-cross-country-championships_2020-04-02_5e86033758965.jpg', 'Bathurst iaaf world cross country championships', '2021-world-athletics-cross-country-championships_2020-04-02_5e8603375b9a4.jpg', '2021 World Athletics Cross Country Championships', NULL, 'IAAF World Cross Country Championships | Live Stream on Onlinelivehdtv24', 'Sports event', 'Australia', 'Bathurst', NULL, NULL, 'iaaf world cross country championships,2021 World Athletics Cross Country Championships', NULL, '1', '2020-04-02 14:56:24', '2020-04-02 15:22:31'),
(40, '1', 4, NULL, 28, 1, NULL, NULL, 34, '2021-05-01', '2021-05-01', NULL, 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2021-05-01', '2021-05-01', '0', '0', '2021 Kentucky Derby', '2021-kentucky-derby', '2021-kentucky-derby_2020-04-02_5e8605a3309dd.jpg', 'kentucky derby live stream', '2021-kentucky-derby_2020-04-02_5e8605a330cac.jpg', '2021 Kentucky Derby date', NULL, '2021 kentucky derby | May 01 | Live Stream on Onlinelivehdtv24', 'Sports event', 'Kentucky', 'Louisville', NULL, NULL, '2021 Kentucky Derby date', NULL, '1', '2020-04-02 15:32:51', '2020-04-02 15:32:51'),
(41, '1', 4, NULL, 29, 1, NULL, NULL, 35, '2021-06-05', '2021-06-05', '2021 Belmont Stakes | Saturday, June 5, 2021 | Live Stream', 'https://look.udncoeln.com/offer?prod=604&ref=5149664', '2021-06-05', '2021-07-05', '0', '0', '2021 Belmont Stakes', '2021-belmont-stakes', '2021-belmont-stakes_2020-04-02_5e860a58ca78c.jpg', 'Belmont Stakes 2021', '2021-belmont-stakes_2020-04-02_5e860a58caa7b.jpg', 'Belmont park 2021 Belmont Stakes', NULL, '2021 Belmont Stakes | Live Stream on Onlinelivehdhd24', 'Sports event', 'New York', 'Elmont', NULL, NULL, 'belmont race,Belmont Stakes 2021', NULL, '1', '2020-04-02 15:52:56', '2020-04-02 15:52:56'),
(42, '1', 2, NULL, 30, 1, NULL, NULL, 36, '2020-08-08', '2020-08-09', 'Mud Hero 6K Alberta 2020 | 08 August- 09 August | Live Stream', NULL, '2020-08-08', '2020-08-09', '0', '0', 'Mud Hero 6K Alberta 2020', 'mud-hero-6k-alberta', 'mud-hero-6k-alberta-2020_2020-04-11_5e9122e2bf8cf.jpg', 'Mud Hero 6K Alberta 2020', 'mud-hero-6k-alberta-2020_2020-04-11_5e9122e2c0dad.jpg', 'Mud hero 2020 red deer', NULL, 'Mud Hero 6K Alberta 2020 | Live on Onlinelivehdtv24.com', 'Sports event', 'Canada', 'Red Deer', NULL, NULL, 'Mud hero 2020 red deer,Mud Hero 6K Alberta 2020', NULL, '1', '2020-04-09 09:14:38', '2020-04-11 01:54:04'),
(44, '1', 2, 2, 31, 1, NULL, NULL, 37, '2020-08-22', '2020-08-23', 'Mud Hero 6K Toronto 2020 | 22 August- 23 August | Live Stream', 'http://see.kmisln.com/offer?prod=604&ref=5163366', '2020-08-22', '2020-08-23', '0', '0', 'Mud Hero 6K Toronto', 'mud-hero-toronto', 'mud-hero-6k-toronto_2020-04-11_5e9144552373c.jpg', 'Mud Hero 6K toronto 2020', 'mud-hero-6k-toronto_2020-04-11_5e914455248fb.jpg', 'Mud run 2020', NULL, 'Mud Hero 6K Toronto 2020 | Live on Onlinelivehdtv24.com', 'Sports event', 'Canada', 'Caledon', NULL, NULL, 'Mud run 2020,Mud Hero 6K toronto 2020', NULL, '1', '2020-04-11 04:12:17', '2020-08-21 06:59:42'),
(45, '1', 2, 2, 32, 1, NULL, NULL, 38, '2020-09-05', '2020-09-05', 'Mud Hero Nova Scotia | 05 Sept, 2020 | Live Stream', NULL, '2020-09-05', '2020-09-05', '0', '0', 'Mud Hero Nova Scotia 2020', 'mud-hero-nova-scotia', 'mud-hero-nova-scotia-2020_2020-04-11_5e914abf9b3e8.jpg', 'MUD HERO 6K NOVA SCOTIA', 'mud-hero-nova-scotia-2020_2020-04-11_5e914abf9b5db.jpg', 'MUD HERO NOVA SCOTIA 2020', NULL, 'Mud Hero Nova Scotia 2020 | Onlinelivehdtv24', 'Sports event', 'Canada', 'Debert', NULL, NULL, 'Mud Hero Nova Scotia 2020', NULL, '1', '2020-04-11 04:29:05', '2020-04-11 04:42:39'),
(46, '1', 2, 2, 34, 1, NULL, NULL, 39, '2020-09-19', '2020-09-20', 'Mud Hero Montreal 2020 | 19 Sept 9:00 a.m. EDT - 20 Sept  8:00 a.m. EDT| Live Stream', NULL, '2020-09-19', '2020-09-20', '0', '0', 'Mud Hero Montreal 2020', 'mud-hero-montreal', 'mud-hero-montreal-2020_2020-06-13_5ee4bffd9a3d3.jpg', 'Mud Hero Montreal 2020', 'mud-hero-montreal-2020_2020-06-13_5ee4bffd9f4c0.jpg', 'Mud Hero 6K Montreal', NULL, 'Mud Hero Montreal 2020 | Live Stream', 'Sports event', 'Canada', 'Morin-Heights', NULL, NULL, 'Mud Hero Montreal,Mud Hero 6K Montreal', NULL, '1', '2020-06-13 09:45:49', '2020-06-13 12:06:30'),
(47, '2', 6, NULL, 39, 1, 45, 46, NULL, '2020-09-13', '2020-09-13', 'Ravens vs Browns | Live Stream | 13 Sept 2020', NULL, '2020-09-13', '2020-09-13', '0', '0', 'Ravens vs Browns', 'ravens-vs-browns-live-stream', 'ravens-vs-browns_2020-06-19_5eec851d0ded6.jpg', 'Ravens vs Browns live stream', 'ravens-vs-browns_2020-06-19_5eec851d0e1c4.jpg', 'Ravens vs Browns 2020', NULL, 'Ravens vs Browns Live Stream | Watch on Onlinelivehdtv24.com', 'Sports event', 'Maryland', 'Baltimore', NULL, NULL, 'ravens vs browns live stream', NULL, '1', '2020-06-19 09:27:57', '2020-06-19 09:29:39'),
(48, '1', 4, NULL, 35, 1, NULL, NULL, 40, '2020-09-11', '2020-09-13', 'Horse Poor Barrel Race Live Stream | 11 Sept- 13 Sept 2020 |', '//look.erteln.com/offer?prod=604&ref=5149664&s=horserace', '2020-09-11', '2020-09-13', '0', '0', 'Horse Poor Barrel Race', 'horse-poor-barrel-race', 'horse-poor-barrel-race_2020-06-19_5eec87f63ef3c.jpg', 'Horse Poor Barrel Race 2020', 'horse-poor-barrel-race_2020-06-19_5eec87f63f0f1.jpg', 'Horse Poor Barrel Race Live', NULL, 'Horse Poor Barrel Race Live Stream 2020 | Onlinelivehdtv24.com', 'Sports event', 'United States', 'Mississippi', NULL, NULL, NULL, NULL, '1', '2020-06-19 09:40:06', '2020-10-11 10:15:37'),
(49, '1', 4, NULL, 36, 1, NULL, NULL, 41, '2020-10-03', '2020-10-03', 'Motokwe Derby - Horse Race 2020 | 03 October 2020| Live Stream', 'http://look.erteln.com/offer?prod=604&ref=5149664&s=horserace', '2020-10-03', '2020-10-03', '0', '0', 'Motokwe Derby - Horse Race 2020', 'motokwe-derby-horse-race', 'motokwe-derby-horse-race-2020_2020-06-19_5eec893778185.jpg', 'Motokwe Derby - Horse Race 2020', 'motokwe-derby-horse-race-2020_2020-06-19_5eec893778649.jpg', 'Motokwe Derby Horse Race', NULL, 'Motokwe Derby Horse Race 2020 | Watch Live | Onlinelivehdtv24', 'Sports event', 'Botswana', 'Kweneng District', NULL, NULL, NULL, NULL, '1', '2020-06-19 09:45:27', '2020-10-11 09:59:27'),
(50, '1', 4, NULL, 37, 1, NULL, NULL, 42, '2020-09-12', '2020-09-12', 'The Edinburgh Cup Raceday | 12 Sept 2020 | Watch Live', 'http://look.erteln.com/offer?prod=604&ref=5149664&s=horserace', '2020-09-12', '2020-09-12', '0', '0', 'The Edinburgh Cup Raceday', 'the-edinburgh-cup-raceday', 'the-edinburgh-cup-raceday_2020-06-19_5eec8a3e4cf93.jpg', 'The Edinburgh Cup Raceday 2020', 'the-edinburgh-cup-raceday_2020-06-19_5eec8a3e4d1b8.jpg', 'The Edinburgh Cup Raceday Live', NULL, 'The Edinburgh Cup Raceday | Watch Live | Onlinelivehdtv24', 'Sports event', 'United Kingdom', 'Musselburgh', NULL, NULL, NULL, NULL, '1', '2020-06-19 09:49:50', '2020-10-11 10:00:07'),
(51, '1', 4, NULL, 37, 1, NULL, NULL, 43, '2020-09-27', '2020-09-27', 'The Honest Toun Family Day | 27 Sept 2020 | Watch Live', 'http://look.erteln.com/offer?prod=604&ref=5149664&s=horserace', '2020-09-27', '2020-09-27', '0', '0', 'The Honest Toun Family Day', 'the-honest-toun-family-day', 'the-honest-toun-family-day_2020-06-19_5eec8cc57e8b3.png', 'The Honest Toun Family Day 2020', 'the-honest-toun-family-day_2020-06-19_5eec8cc57ec8a.png', 'The Honest Toun Family Day', NULL, 'The Honest Toun Family Day | 27 Sept 2020 | Watch Live', 'Sports event', 'United Kingdom', 'Musselburgh', NULL, NULL, NULL, NULL, '1', '2020-06-19 10:00:37', '2020-10-11 10:00:23'),
(52, '1', 4, NULL, 38, 1, NULL, NULL, 44, '2020-09-13', '2020-09-13', 'Sunday Afternoon Racing | 13 Sept 2020| Watch Live', 'http://look.erteln.com/offer?prod=604&ref=5149664&s=horserace', '2020-09-13', '2020-09-13', '0', '0', 'Sunday Afternoon Racing', 'sunday-afternoon-racing', 'sunday-afternoon-racing_2020-06-19_5eec8e7ed39fe.jpg', 'Sunday Afternoon Racing 2020', 'sunday-afternoon-racing_2020-06-19_5eec8e7ed3cc1.jpg', 'Sunday Afternoon Racing', NULL, 'Sunday Afternoon Racing | 13 Sept 2020| Watch on Onlinelivehdtv24', 'Sports event', 'United Kingdom', 'Trimsaran', NULL, NULL, NULL, NULL, '1', '2020-06-19 10:07:58', '2020-10-11 10:00:36'),
(53, '2', 6, NULL, 40, 1, 47, 48, NULL, '2020-09-14', '2020-09-14', 'Giants vs Steelers | 14 Sept. 2020 | Watch Live Streaming.......', NULL, '2020-09-14', '2020-09-14', '0', '0', 'Steelers vs Giants | Watch Live', 'steelers-vs-giants', 'steelers-vs-giants-watch-live_2020-06-24_5ef3640dc140e.jpg', 'Giants vs Steelers game 2020', 'steelers-vs-giants-watch-live_2020-06-24_5ef3640dc1a34.jpg', 'steelers vs giants live stream', NULL, 'Steelers vs Giants | Watch Live | Onlinelivehdtv24', 'Sports event', 'United States', 'East Rutherford, NJ', NULL, NULL, 'steelers vs giants', NULL, '1', '2020-06-24 14:32:45', '2020-06-24 14:32:45'),
(54, '2', 6, NULL, 41, 1, 49, 46, NULL, '2020-09-17', '2020-09-17', 'Watch Live Bengals vs Browns | 17 Sept. 2020', NULL, '2020-09-17', '2020-09-17', '0', '0', 'Watch Bengals vs Browns Live Stream', 'bengals-vs-browns-live-stream', 'watch-bengals-vs-browns-live-stream_2020-06-24_5ef3665ecd1d2.jpg', 'Watch bengals browns game live', 'watch-bengals-vs-browns-live-stream_2020-06-24_5ef3665ecd6f3.jpg', 'bengals vs browns live stream online', NULL, 'bengals vs browns live stream 2020 | Onlinelivehdtv24', 'Sports event', 'United States', 'Cleveland, OH', NULL, NULL, 'bengals vs browns live stream', NULL, '1', '2020-06-24 14:42:38', '2020-06-24 14:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2019-12-30_5e09b80a3c1a4.jpg', '1', '2019-12-30 02:40:42', '2019-12-30 02:40:42'),
(2, '2019-12-30_5e09b8134489c.jpg', '1', '2019-12-30 02:40:51', '2019-12-30 02:40:51'),
(3, '2019-12-30_5e09b81cdb375.jpg', '1', '2019-12-30 02:41:00', '2019-12-30 02:41:00'),
(4, '2019-12-30_5e09b8271cf1b.jpg', '1', '2019-12-30 02:41:11', '2019-12-30 02:41:11'),
(5, '2019-12-30_5e09b831da8db.jpg', '1', '2019-12-30 02:41:21', '2019-12-30 02:41:21'),
(6, '2019-12-30_5e09b83b709e0.jpg', '1', '2019-12-30 02:41:31', '2019-12-30 02:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

DROP TABLE IF EXISTS `home_pages`;
CREATE TABLE IF NOT EXISTS `home_pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seo_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_pages`
--

INSERT INTO `home_pages` (`id`, `seo_title`, `meta_keyword`, `meta_description`, `header_code`, `footer_code`, `created_at`, `updated_at`) VALUES
(1, 'Online Live HD TV | Sports Stream Live | Watch Now', 'sportstreamlive, live streaming horse racing, watchathletics,watch crossfit open live,watch rugby sevens live', 'Live streaming tv- watchathletics, live streaming horse racing, watch crossfit open live, watch rugby sevens live- all sporting events together in one channel.', '<script type=\"application/ld+json\">\r\n{\r\n   \"@context\": \"https://schema.org\",\r\n   \"@type\": \"WebSite\",\r\n   \"url\": \"https://www.onlinelivehdtv24.com/\",\r\n   \"potentialAction\": {\r\n     \"@type\": \"SearchAction\",\r\n     \"target\": \"https://query.onlinelivehdtv24.com/search?q={search_term_string}\",\r\n     \"query-input\": \"required name=search_term_string\"\r\n   }\r\n}\r\n</script>', NULL, '2020-06-21 04:44:14', '2020-06-22 08:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_04_173107_create_settings_table', 1),
(4, '2019_09_05_101338_create_permission_tables', 1),
(5, '2019_12_17_044537_create_categories_table', 1),
(6, '2019_12_17_091703_create_subcategories_table', 1),
(7, '2019_12_18_065108_create_sliders_table', 1),
(8, '2019_12_18_104052_create_galleries_table', 1),
(9, '2019_12_18_155045_create_abouts_table', 1),
(10, '2019_12_19_053949_create_subsicbers_table', 1),
(11, '2019_12_19_081004_create_contacts_table', 1),
(12, '2019_12_21_061331_create_newslatests_table', 1),
(13, '2019_12_23_054815_create_studia_table', 1),
(14, '2019_12_23_071013_create_clubs_table', 1),
(15, '2019_12_23_084604_create_scores_table', 1),
(16, '2019_12_23_101000_create_events_table', 1),
(17, '2019_12_25_070343_create_upcomingmatches_table', 1),
(19, '2020_06_21_084628_create_home_pages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newslatests`
--

DROP TABLE IF EXISTS `newslatests`;
CREATE TABLE IF NOT EXISTS `newslatests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `title_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_tag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `newslatests_category_id_foreign` (`category_id`),
  KEY `newslatests_subcategory_id_foreign` (`subcategory_id`),
  KEY `newslatests_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslatests`
--

INSERT INTO `newslatests` (`id`, `category_id`, `subcategory_id`, `user_id`, `title_slug`, `title`, `image`, `alt_tag`, `description`, `date`, `meta_keyword`, `seo_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(7, 2, NULL, 1, '2020-crossfit-games-event-schedule', '2019-2020 Crossfit Season | Schedule Released', '2019-2020-crossfit-season-schedule-released_2020-03-03_5e5e46841c707.png', 'crossfit games schedule 2020', '<p>The season of Crossfit games has already started to compete for the next grand Reebok Crossfit 2020. This year the games undergo a lot of changes- new rules and formatting, even more Sanctions&trade;. Here, to let you know the listing and schedule of all 2019-2020 CrossFit games evolving this season.</p>\n\n<p><strong>Flashback of 2019-20 Crossfit Open Workout</strong></p>\n\n<p>2019-2020 CrossFit open work already released. The opening lasted from October 10th to November 11th. During the open, new workouts were declared every Thursday on live at 5 P.M PT, and the submission deadline was pre-scheduled on Monday at 5 P.M PST.</p>\n\n<p>Next Sanctions throughout the entire year will be held following the open workouts performances. In total, 28 sanctions are scheduled this year, while 15 sanctions had taken place in the past year- nearly double events this year.</p>\n\n<p>The top finishers from each event will be invited to compete for the 2020 Reebok Crossfit Games held from July29 to August 02, in Madison, Wisconsin. Reebok Competition invites award for the finishers based on the winner of this sanction competition, the CrossFit open national winner, the best 20 in CrossFit open, and also the wild card invitation.</p>\n\n<h1>Crossfit Sanctionals Schedule 2019-2020</h1>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td><strong>Crossfit Games Held in 2019</strong></td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td><strong>&nbsp;Month</strong></td>\n			<td><strong>&nbsp;Date&nbsp;</strong></td>\n			<td><strong>&nbsp;Event&nbsp; &nbsp; &nbsp;</strong></td>\n			<td><strong>&nbsp;Place</strong></td>\n		</tr>\n		<tr>\n			<td>November</td>\n			<td>22-24</td>\n			<td><strong>CrossFit Filthy 150</strong></td>\n			<td>Dublin, Ireland</td>\n		</tr>\n		<tr>\n			<td>December</td>\n			<td>02-08&nbsp; &nbsp;&nbsp;</td>\n			<td><strong>CrossFit Challenge</strong></td>\n			<td>Chengdu, China</td>\n		</tr>\n		<tr>\n			<td>December</td>\n			<td>11-15</td>\n			<td><strong>Dubai CrossFit&nbsp; Championship</strong></td>\n			<td>Dubai, UAE</td>\n		</tr>\n		<tr>\n			<td>December</td>\n			<td>20-21</td>\n			<td><strong>The Southfit CrossFit&nbsp; Challenge</strong></td>\n			<td>Buenos Aires,&nbsp; Argentina</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td><strong>Crossfit Games Held in 2020</strong></td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td><strong>&nbsp;Month</strong></td>\n			<td><strong>&nbsp;Date&nbsp;</strong></td>\n			<td><strong>&nbsp;Event&nbsp; &nbsp; &nbsp;</strong></td>\n			<td><strong>&nbsp;Place</strong></td>\n		</tr>\n		<tr>\n			<td>January&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n			<td>11-12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n			<td><strong>CrossFit Mayhem Classic&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></td>\n			<td>Cookeville, Tennessee,&nbsp; U.S&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n		</tr>\n		<tr>\n			<td>January&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n			<td>24-26&nbsp; &nbsp;&nbsp;</td>\n			<td><strong>CrossFit Strength in Depth&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></td>\n			<td>London, United Kingdom&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n		</tr>\n		<tr>\n			<td>February&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n			<td>06-09</td>\n			<td><strong>CrossFit Fittest in Cape Town&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></td>\n			<td>Cape Town, South Africa</td>\n		</tr>\n		<tr>\n			<td>February</td>\n			<td>14-16</td>\n			<td><strong>Norwegian CrossFit Championship</strong></td>\n			<td>Gol, Norway</td>\n		</tr>\n		<tr>\n			<td>February</td>\n			<td>20-23</td>\n			<td><strong>Wodapalooza CrossFit Festival</strong></td>\n			<td>Miami, Florida, U.S</td>\n		</tr>\n		<tr>\n			<td>March</td>\n			<td>05-08</td>\n			<td><strong>Australian CrossFit Championship</strong></td>\n			<td>Queensland, Australia</td>\n		</tr>\n		<tr>\n			<td>March</td>\n			<td>06-08</td>\n			<td><a href=\"https://www.onlinelivehdtv24.com/eventdetalis/brazil-crossfit-championship-2020\"><strong>Brazil CrossFit Championship- Watch Live&nbsp;</strong></a></td>\n			<td>S&atilde;o Paulo, Brazil</td>\n		</tr>\n		<tr>\n			<td>March</td>\n			<td>13-15</td>\n			<td><strong>Reykjav&iacute;k CrossFit Championship</strong></td>\n			<td>Reykjav&iacute;k, Iceland</td>\n		</tr>\n		<tr>\n			<td>March</td>\n			<td>20-22</td>\n			<td><strong>West Coast CrossFit Classic</strong></td>\n			<td>Del Mar, California, U.S.</td>\n		</tr>\n		<tr>\n			<td>March</td>\n			<td>28-29</td>\n			<td><strong>CrossFit German Throwdown</strong></td>\n			<td>Berlin, Germany</td>\n		</tr>\n		<tr>\n			<td>April</td>\n			<td>03-05</td>\n			<td><strong>CrossFit Atlas Games</strong></td>\n			<td>Montreal, Canada</td>\n		</tr>\n		<tr>\n			<td>April</td>\n			<td>08-11</td>\n			<td><strong>ELFIT CrossFit Championship</strong></td>\n			<td>Hurghada, Egypt</td>\n		</tr>\n		<tr>\n			<td>April</td>\n			<td>17-19</td>\n			<td><a href=\"https://www.onlinelivehdtv24.com/eventdetalis/mid-atlantic-crossfit-challenge-2020\"><strong>Mid-Atlantic CrossFit Challenge</strong></a></td>\n			<td>Washington, D.C., U.S.</td>\n		</tr>\n		<tr>\n			<td>April</td>\n			<td>24-26</td>\n			<td><a href=\"https://www.onlinelivehdtv24.com/eventdetalis/crossfit-italian-showdown-2020\"><strong>CrossFit Italian Showdown</strong></a></td>\n			<td>Milan, Italy</td>\n		</tr>\n		<tr>\n			<td>May</td>\n			<td>01-03</td>\n			<td><strong>Madrid CrossFit Championship</strong></td>\n			<td>Madrid, Spain</td>\n		</tr>\n		<tr>\n			<td>May</td>\n			<td>08-10</td>\n			<td><strong>Asia CrossFit Championship</strong></td>\n			<td>Shanghai, China</td>\n		</tr>\n		<tr>\n			<td>May</td>\n			<td>22-24</td>\n			<td><a href=\"https://www.onlinelivehdtv24.com/eventdetalis/down-under-crossfit-championship\"><strong>Down Under CrossFit Championship</strong></a></td>\n			<td>Wollongong, Australia</td>\n		</tr>\n		<tr>\n			<td>May</td>\n			<td>29-31</td>\n			<td><strong>CrossFit Lowlands Throwdown</strong></td>\n			<td>Apeldoorn, Netherlands</td>\n		</tr>\n		<tr>\n			<td>June</td>\n			<td>05-07</td>\n			<td><strong>CanWest CrossFit Championship</strong></td>\n			<td>Vancouver, B.C., Canada</td>\n		</tr>\n		<tr>\n			<td>June</td>\n			<td>12-14</td>\n			<td><a href=\"https://www.onlinelivehdtv24.com/eventdetalis/crossfit-granite-games-2020\"><strong>The Granite Games</strong></a></td>\n			<td>U.S.</td>\n		</tr>\n		<tr>\n			<td>June</td>\n			<td>20-21</td>\n			<td><strong>Asbury Summer Games</strong></td>\n			<td>Asbury Park, New Jersey, U.S.</td>\n		</tr>\n		<tr>\n			<td>June</td>\n			<td>26-28</td>\n			<td><strong>CrossFit French Throwdown</strong></td>\n			<td>Paris, France</td>\n		</tr>\n		<tr>\n			<td>July</td>\n			<td>03-05</td>\n			<td><strong>Mayan CrossFit Championship</strong></td>\n			<td>Riviera Maya, Mexico</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Now Live All Crossfit games 2020 - <a href=\"https://signup.hugestfun.com/en/html/sf/registration/eone.html#&amp;sf=eone&amp;lng=en&amp;m=sports&amp;ref=5149664&amp;prod=604&amp;_sign=3c2636334e96921682b82fef8994107d&amp;_signt=1583300314\">Watch here</a></p>', '2020-03-03', 'crossfit games schedule 2020', '2019-2020 Crossfit Season | Schedule Released | Onlinelivehdtv24', NULL, '1', '2020-03-03 10:26:35', '2020-03-07 08:08:56'),
(8, 2, NULL, 1, 'is-crossfit-sport', 'Is Crossfit a Sport?', 'is-crossfit-a-sport_2020-03-07_5e6353c8d1639.png', 'crossfit can be considered a sport', '<p><!-- wp:paragraph --></p>\n\n<p>Should Crossfit be considered a sport or just merely a training program? Sports have a clearly defined set of rules. The <a href=\"https://gaisf.sport/\">Global Association of International Sports Federation</a> takes into account some conditions for placing a game as a sport. According to the Federation, <strong>a sport should be a competition, that is, when a game has a competitive element, it is considered a sport</strong>. Secondly, <strong>It will not work in any way harmful to any living creature</strong>. Thirdly, <strong>sports should not confide in a single supplier for equipment</strong>. It actually defines all forms of physical activities that have a goal to improve physical fitness, mental well-being, form a social relationship and reach a result in competition at all level- according to <strong>Council of Europe</strong>, European Sports Charter, article 2.i</p>\n\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\n\n<p>With all sides, Crossfit is also a competitive game to be played by the athletes through physical workouts to compete with each other and achieve a goal. So, according to the defined rules for a sport, we can conclude that Crossfit game falls into the category of sports.</p>\n\n<p><strong>Also check</strong>- <a href=\"https://www.onlinelivehdtv24.com/newsdetails/2020-crossfit-games-event-schedule\">2019-2020 CROSSFIT SCHEDULE RELEASED</a></p>\n\n<p><a href=\"https://www.onlinelivehdtv24.com/uploads/2019-2020-crossfit-season-schedule-released_2020-03-03_5e5e46841c707.png\" target=\"_self\"><img alt=\"\" src=\"https://www.onlinelivehdtv24.com/uploads/2019-2020-crossfit-season-schedule-released_2020-03-03_5e5e46841c707.png\" style=\"height:200px; width:200px\" /></a></p>\n\n<p><!-- /wp:paragraph --></p>', '2020-03-07', 'Is Crossfit a Sport?', 'Is Crossfit a Sport?', NULL, '0', '2020-03-07 07:56:56', '2020-03-07 10:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user.view', 'web', '2019-12-30 00:59:23', NULL),
(2, 'user.create', 'web', '2019-12-30 00:59:23', NULL),
(3, 'user.update', 'web', '2019-12-30 00:59:23', NULL),
(4, 'user.delete', 'web', '2019-12-30 00:59:23', NULL),
(5, 'language.view', 'web', '2019-12-30 00:59:23', NULL),
(6, 'language.create', 'web', '2019-12-30 00:59:23', NULL),
(7, 'language.update', 'web', '2019-12-30 00:59:23', NULL),
(8, 'language.delete', 'web', '2019-12-30 00:59:23', NULL),
(9, 'role.view', 'web', '2019-12-30 00:59:23', NULL),
(10, 'role.create', 'web', '2019-12-30 00:59:23', NULL),
(11, 'role.update', 'web', '2019-12-30 00:59:23', NULL),
(12, 'role.delete', 'web', '2019-12-30 00:59:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2019-12-30 00:59:23', '2019-12-30 00:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `club_id` bigint UNSIGNED DEFAULT NULL,
  `score` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scores_club_id_foreign` (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'company_name', 'Onlinelivehdtv24', '2019-12-30 01:00:28', '2021-03-06 13:38:23'),
(2, 'site_title', ' Sports Event Website', '2019-12-30 01:00:28', '2021-03-06 13:38:23'),
(3, 'phone', '01792747486', '2019-12-30 01:00:28', '2021-03-06 13:38:23'),
(4, 'email', 'bithibina633@gmail.com', '2019-12-30 01:00:28', '2021-03-06 13:38:23'),
(5, 'currency_symbol', 'taka', '2019-12-30 01:00:28', '2019-12-30 01:00:28'),
(6, 'timezone', 'Africa/Abidjan', '2019-12-30 01:00:28', '2021-03-06 13:38:23'),
(7, 'fax', '+3301-341-0476', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(8, 'alt_phone', '', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(9, 'start_date', '', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(10, 'language', 'English', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(11, 'land_mark', '', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(12, 'address', '', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(13, 'fb', 'https://www.facebook.com/onlinelivehdtv24/', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(14, 'twiter', 'https://twitter.com/Onlinelivehdtv1', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(15, 'youtube', '', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(16, 'linkedin', '', '2019-12-30 02:48:46', '2021-03-06 13:38:23'),
(17, 'logo', '3dYSeBpa8RFoTkY4jWjcZua0t65iLTOlIo7nt3ar.png', '2019-12-30 02:48:47', '2021-03-06 13:38:24'),
(18, 'favicon', 'RG4MrjU2TcwckGSv1gnogwO9w9wEl5OfVD6MFvNF.png', '2019-12-30 02:48:47', '2021-03-06 13:38:24'),
(19, 'oldLogo', '3dYSeBpa8RFoTkY4jWjcZua0t65iLTOlIo7nt3ar.png', '2019-12-30 02:55:02', '2021-03-06 13:38:23'),
(20, 'oldfavicon', 'RG4MrjU2TcwckGSv1gnogwO9w9wEl5OfVD6MFvNF.png', '2019-12-30 02:55:02', '2021-03-06 13:38:23'),
(21, 'logo2', '7GGGzoGy0HhTwzlixc7s2dRYP6oOz4Cr8TEsy8LW.png', '2020-01-14 16:20:42', '2021-03-06 13:38:24'),
(22, 'oldLogo2', '7GGGzoGy0HhTwzlixc7s2dRYP6oOz4Cr8TEsy8LW.png', '2020-01-14 16:25:27', '2021-03-06 13:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `position`, `title`, `sub_title`, `description`, `image_one`, `image_two`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Best Player', 'World Champions', 'Look no further, Get updates,  Watch live over the next 12 months!', 'best-soccer_2019-12-30_5e09a903c3c32.png', 'html-template_2019-12-30_5e09a903c42cc.png', '1', '2019-12-30 01:36:35', '2020-01-25 10:03:48'),
(2, '2', '2020 in Sports', 'Upcoming Events', 'Count down from now & Capture the unmissable moment of your favorite sports team', 'news-king-newspaper-history_2020-01-05_5e11bc81baf15.png', 'sporting-club_2020-01-05_5e11bc81bba5b.png', '1', '2020-01-05 04:37:53', '2020-01-25 10:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `studia`
--

DROP TABLE IF EXISTS `studia`;
CREATE TABLE IF NOT EXISTS `studia` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `studium_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studia`
--

INSERT INTO `studia` (`id`, `studium_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mestalla Stadium', '1', '2019-12-30 01:38:46', '2019-12-30 01:38:46'),
(2, 'San Siro', '1', '2019-12-30 01:38:53', '2019-12-30 01:38:53'),
(3, 'Nanjing Youth Olympic Sports Park', '1', '2020-01-18 04:29:24', '2020-01-18 04:29:24'),
(4, 'New National Stadium; Imperial Palace Garden', '1', '2020-01-18 04:29:46', '2020-01-18 04:29:46'),
(5, 'Olympic Stadium', '1', '2020-01-18 04:30:00', '2020-01-18 04:30:00'),
(6, 'Stade Sébastien Charléty', '1', '2020-01-18 04:30:23', '2020-01-18 04:30:23'),
(7, 'DC Armory, 2001 E Capitol St SE', '1', '2020-01-18 04:30:36', '2020-01-18 04:30:36'),
(8, 'Play Riccione Hall', '1', '2020-01-18 04:30:47', '2020-01-18 04:30:47'),
(10, 'WIN Sports & Entertainment Centres', '1', '2020-01-18 04:31:09', '2020-01-18 04:31:09'),
(11, 'De Voorwaarts 55', '1', '2020-01-18 04:31:20', '2020-01-18 04:31:20'),
(13, 'Wembley Stadium', '1', '2020-01-22 05:07:02', '2020-01-22 05:07:02'),
(14, 'Atatürk Olympic Stadium', '1', '2020-01-22 05:07:16', '2020-01-22 05:07:16'),
(15, '9 Venues', '1', '2020-01-22 05:07:51', '2020-01-22 05:07:51'),
(16, 'Thomas & Mack Center', '1', '2020-01-22 05:08:04', '2020-01-22 05:08:04'),
(17, 'RDS Main Arena', '1', '2020-01-22 05:08:17', '2020-01-22 05:08:17'),
(18, 'Exhibition Arena', '1', '2020-01-22 05:08:33', '2020-01-22 05:08:33'),
(19, 'NEC, National Exhibition Centre', '1', '2020-01-22 05:08:47', '2020-01-22 05:08:47'),
(20, 'the Stade Jean-Bouin', '1', '2020-01-22 05:09:01', '2020-01-22 05:09:01'),
(21, 'Ginásio do Ibirapuera', '1', '2020-01-22 07:46:13', '2020-01-22 07:46:13'),
(22, 'Emirates Stadium', '1', '2020-02-04 07:30:19', '2020-02-04 07:30:19'),
(23, 'Anfield', '1', '2020-02-04 07:31:01', '2020-02-04 07:31:01'),
(24, 'St James\' Park', '1', '2020-02-04 07:31:22', '2020-02-04 07:31:22'),
(25, 'Twickenham Stadium', '1', '2020-04-02 06:34:49', '2020-04-02 06:51:58'),
(26, 'Eugene', '1', '2020-04-02 14:13:24', '2020-04-02 14:13:24'),
(27, 'Bathurst', '1', '2020-04-02 14:49:40', '2020-04-02 14:49:40'),
(28, 'Churchill Downs', '1', '2020-04-02 15:24:20', '2020-04-02 15:24:20'),
(29, 'Belmont Park', '1', '2020-04-02 15:38:28', '2020-04-02 15:38:28'),
(30, 'Heritage Ranch', '1', '2020-04-09 06:31:04', '2020-04-09 06:31:04'),
(31, 'Albion Hills Conservation Park', '1', '2020-04-11 02:11:29', '2020-04-11 02:11:29'),
(32, 'Debert Airfield', '1', '2020-04-11 04:23:51', '2020-04-11 04:23:51'),
(33, 'Online', '1', '2020-04-13 05:39:07', '2020-04-13 05:39:07'),
(34, 'Sommet Morin Heights', '1', '2020-06-13 09:06:48', '2020-06-13 09:06:48'),
(35, 'Mississippi Horse Park', '1', '2020-06-19 09:19:16', '2020-06-19 09:19:16'),
(36, 'Kweneng District', '1', '2020-06-19 09:19:33', '2020-06-19 09:19:33'),
(37, 'Musselburgh Racecourse', '1', '2020-06-19 09:19:53', '2020-06-19 09:19:53'),
(38, 'Ffos Las Racecourse', '1', '2020-06-19 09:20:22', '2020-06-19 09:20:22'),
(39, 'M&T Bank Stadium', '1', '2020-06-19 09:20:39', '2020-06-19 09:20:39'),
(40, 'MetLife Stadium', '1', '2020-06-24 14:21:56', '2020-06-24 14:21:56'),
(41, 'FirstEnergy Stadium', '1', '2020-06-24 14:23:15', '2020-06-24 14:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `subcat_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcat_slug_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcat_name`, `subcat_slug_name`, `banner_image`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Crossfit Game', 'crossfit-game', '_2019-12-30_5e09a6a116f16.jpg', NULL, NULL, '1', '2019-12-30 01:25:40', '2019-12-30 01:27:52'),
(2, 2, 'Crossfit Open', 'crossfit-open', '_2020-03-05_5e60ebe83e836.png', NULL, NULL, '1', '2019-12-30 01:28:15', '2020-03-05 12:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `subsicbers`
--

DROP TABLE IF EXISTS `subsicbers`;
CREATE TABLE IF NOT EXISTS `subsicbers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subsicbers`
--

INSERT INTO `subsicbers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2019-12-30 01:16:15', '2019-12-30 01:16:15'),
(2, 'vjhjhgvjh@g.com', '2019-12-31 23:20:40', '2019-12-31 23:20:40'),
(3, 'shimulvisa@gmail.com', '2020-02-10 12:03:27', '2020-02-10 12:03:27'),
(4, 'sggdgf@gmdll.com', '2020-02-18 06:28:03', '2020-02-18 06:28:03'),
(5, 'morshalinislam61@gmil.com', '2020-03-07 12:05:27', '2020-03-07 12:05:27'),
(6, 'frank@bulkweedinbox.com', '2020-03-17 06:56:13', '2020-03-17 06:56:13'),
(7, 'vivi13529@gmail.com', '2020-03-17 14:12:45', '2020-03-17 14:12:45'),
(8, 'onlinelivehdtv24.com@domstat.su', '2020-03-21 08:19:51', '2020-03-21 08:19:51'),
(9, 'info@clientsports.com', '2020-03-26 12:49:07', '2020-03-26 12:49:07'),
(10, 'areha85@yahoo.com', '2020-08-29 16:47:07', '2020-08-29 16:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `upcomingmatches`
--

DROP TABLE IF EXISTS `upcomingmatches`;
CREATE TABLE IF NOT EXISTS `upcomingmatches` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upcomingmatches_event_id_foreign` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `password`, `phone`, `image`, `banner`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdus Sattar', 'MD.', 'Abdus', 'Sattar', NULL, 'admin@gmail.com', NULL, '$2y$10$c6wHzG5DXhJ1RhPYfmenXOQKNAReTx7w9dDz1o4mLmP6Zm5zAbI7C', NULL, NULL, NULL, NULL, NULL, '2019-12-30 00:59:23', '2020-06-22 15:02:18');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_clubone_id_foreign` FOREIGN KEY (`clubone_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_clubtwo_id_foreign` FOREIGN KEY (`clubtwo_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_single_club_foreign` FOREIGN KEY (`single_club`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_studium_id_foreign` FOREIGN KEY (`studium_id`) REFERENCES `studia` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `newslatests`
--
ALTER TABLE `newslatests`
  ADD CONSTRAINT `newslatests_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `newslatests_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `newslatests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upcomingmatches`
--
ALTER TABLE `upcomingmatches`
  ADD CONSTRAINT `upcomingmatches_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

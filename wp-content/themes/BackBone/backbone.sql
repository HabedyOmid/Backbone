-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 10, 2019 at 07:13 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backbone`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1549512361');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-07 03:24:02', '2019-02-07 03:24:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'trash', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'BackBone', 'yes'),
(4, 'blogdescription', 'An Awesome WP Start Theme + ACF', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'omidiskawous@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'BackBone', 'yes'),
(41, 'stylesheet', 'BackBone', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', 'UM8J8uVxcC5tES1*X>^7S~qP(6e.z<|)48cgAoh{gSy+XIa~$e|<! a?K)IH!|+r', 'no'),
(109, 'nonce_salt', '_L_uW3;9gb{HZPO,qi0Yx7(L4:dLmC7QKe)8Kq`tQICt%OC97#4$$MK>H#3smUuS', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:5:{i:1549783443;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1549812243;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1549845711;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1549855484;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549510822;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1549782686;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'auth_key', 'G5+-az2 [rO;]:qWem_q5Ne:>bq3*+NQ~[SK&j~OJ94{rK2^x1chrW9e6s6OaJ5k', 'no'),
(118, 'auth_salt', 'tgDvn}lsM^aI3hgo{g[(s+mte0eF/T9zZ1{.<}pQc2Hu65]H?#Q[`o$k^].R]p$?', 'no'),
(119, 'logged_in_key', '8S?aB]b:Za+ M]u#$:DG><.46C!`BUttX`xy_~~ZWOj)TgJ?=IU#smIKYeRdLB G', 'no'),
(120, 'logged_in_salt', 'exR|!tNQIo,o2H!ef-q2/s*J8!Qz>n.W9c{~Ix*Lq3}$x@47x|/7&}<A*>aj85y?', 'no'),
(125, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1549782689;s:7:\"checked\";a:1:{s:8:\"BackBone\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_timeout_browser_07029b24e495f6afa5a16e1724f72f55', '1550114658', 'no'),
(130, '_site_transient_browser_07029b24e495f6afa5a16e1724f72f55', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"65.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(147, 'WPLANG', '', 'yes'),
(148, 'new_admin_email', 'omidiskawous@gmail.com', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'current_theme', 'BackBone', 'yes'),
(157, 'theme_mods_BackBone', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:12:\"primary-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549510316;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:40;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(169, 'category_children', 'a:0:{}', 'yes'),
(172, 'acf_version', '5.7.10', 'yes'),
(178, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TkRjeU1ESjhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRVdE1ERXRNRFVnTVRnNk5UUTZOVFk9IjtzOjM6InVybCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4ODg4Ijt9', 'yes'),
(189, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1549782689;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.10\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.4\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(192, 'cptui_new_install', 'false', 'yes'),
(213, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(248, 'options_footer_links_0_link_name', 'Contact', 'no'),
(249, '_options_footer_links_0_link_name', 'field_5c5e876437da0', 'no'),
(250, 'options_footer_links_0_link_url', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:30:\"http://localhost:8888/contact/\";s:6:\"target\";s:0:\"\";}', 'no'),
(251, '_options_footer_links_0_link_url', 'field_5c5e879037da1', 'no'),
(252, 'options_footer_links_0_link_target', 'null', 'no'),
(253, '_options_footer_links_0_link_target', 'field_5c5e87bc37da2', 'no'),
(254, 'options_footer_links_1_link_name', 'About ', 'no'),
(255, '_options_footer_links_1_link_name', 'field_5c5e876437da0', 'no'),
(256, 'options_footer_links_1_link_url', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:28:\"http://localhost:8888/about/\";s:6:\"target\";s:0:\"\";}', 'no'),
(257, '_options_footer_links_1_link_url', 'field_5c5e879037da1', 'no'),
(258, 'options_footer_links_1_link_target', 'null', 'no'),
(259, '_options_footer_links_1_link_target', 'field_5c5e87bc37da2', 'no'),
(260, 'options_footer_links_2_link_name', 'Services', 'no'),
(261, '_options_footer_links_2_link_name', 'field_5c5e876437da0', 'no'),
(262, 'options_footer_links_2_link_url', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:31:\"http://localhost:8888/services/\";s:6:\"target\";s:0:\"\";}', 'no'),
(263, '_options_footer_links_2_link_url', 'field_5c5e879037da1', 'no'),
(264, 'options_footer_links_2_link_target', 'null', 'no'),
(265, '_options_footer_links_2_link_target', 'field_5c5e87bc37da2', 'no'),
(266, 'options_footer_links_3_link_name', 'Home', 'no'),
(267, '_options_footer_links_3_link_name', 'field_5c5e876437da0', 'no'),
(268, 'options_footer_links_3_link_url', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"http://localhost:8888/\";s:6:\"target\";s:0:\"\";}', 'no'),
(269, '_options_footer_links_3_link_url', 'field_5c5e879037da1', 'no'),
(270, 'options_footer_links_3_link_target', 'null', 'no'),
(271, '_options_footer_links_3_link_target', 'field_5c5e87bc37da2', 'no'),
(272, 'options_footer_links_4_link_name', 'Privacy Policy', 'no'),
(273, '_options_footer_links_4_link_name', 'field_5c5e876437da0', 'no'),
(274, 'options_footer_links_4_link_url', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:15:\"/privacy-policy\";s:6:\"target\";s:0:\"\";}', 'no'),
(275, '_options_footer_links_4_link_url', 'field_5c5e879037da1', 'no'),
(276, 'options_footer_links_4_link_target', 'null', 'no'),
(277, '_options_footer_links_4_link_target', 'field_5c5e87bc37da2', 'no'),
(278, 'options_footer_links', '5', 'no'),
(279, '_options_footer_links', 'field_5c5e873737d9f', 'no'),
(282, '_transient_timeout_acf_plugin_updates', '1549869088', 'no'),
(283, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.10\";}}', 'no'),
(284, '_site_transient_timeout_theme_roots', '1549784488', 'no'),
(285, '_site_transient_theme_roots', 'a:1:{s:8:\"BackBone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 2, '_edit_lock', '1549697463:1'),
(10, 2, '_edit_last', '1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1549697529:1'),
(13, 13, '_edit_last', '1'),
(14, 13, '_edit_lock', '1549697530:1'),
(15, 15, '_edit_last', '1'),
(16, 15, '_edit_lock', '1549697531:1'),
(17, 17, '_edit_last', '1'),
(18, 17, '_edit_lock', '1549697531:1'),
(19, 19, '_edit_last', '1'),
(20, 19, '_edit_lock', '1549697538:1'),
(21, 22, '_edit_last', '1'),
(22, 22, '_edit_lock', '1549699826:1'),
(23, 24, '_menu_item_type', 'post_type'),
(24, 24, '_menu_item_menu_item_parent', '0'),
(25, 24, '_menu_item_object_id', '2'),
(26, 24, '_menu_item_object', 'page'),
(27, 24, '_menu_item_target', ''),
(28, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 24, '_menu_item_xfn', ''),
(30, 24, '_menu_item_url', ''),
(31, 24, '_menu_item_orphaned', '1549586640'),
(32, 25, '_menu_item_type', 'post_type'),
(33, 25, '_menu_item_menu_item_parent', '0'),
(34, 25, '_menu_item_object_id', '13'),
(35, 25, '_menu_item_object', 'page'),
(36, 25, '_menu_item_target', ''),
(37, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 25, '_menu_item_xfn', ''),
(39, 25, '_menu_item_url', ''),
(40, 25, '_menu_item_orphaned', '1549586641'),
(41, 26, '_menu_item_type', 'post_type'),
(42, 26, '_menu_item_menu_item_parent', '0'),
(43, 26, '_menu_item_object_id', '11'),
(44, 26, '_menu_item_object', 'page'),
(45, 26, '_menu_item_target', ''),
(46, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 26, '_menu_item_xfn', ''),
(48, 26, '_menu_item_url', ''),
(49, 26, '_menu_item_orphaned', '1549586641'),
(50, 27, '_menu_item_type', 'post_type'),
(51, 27, '_menu_item_menu_item_parent', '0'),
(52, 27, '_menu_item_object_id', '2'),
(53, 27, '_menu_item_object', 'page'),
(54, 27, '_menu_item_target', ''),
(55, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 27, '_menu_item_xfn', ''),
(57, 27, '_menu_item_url', ''),
(58, 27, '_menu_item_orphaned', '1549586641'),
(59, 28, '_menu_item_type', 'post_type'),
(60, 28, '_menu_item_menu_item_parent', '0'),
(61, 28, '_menu_item_object_id', '15'),
(62, 28, '_menu_item_object', 'page'),
(63, 28, '_menu_item_target', ''),
(64, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 28, '_menu_item_xfn', ''),
(66, 28, '_menu_item_url', ''),
(67, 28, '_menu_item_orphaned', '1549586641'),
(68, 29, '_menu_item_type', 'post_type'),
(69, 29, '_menu_item_menu_item_parent', '0'),
(70, 29, '_menu_item_object_id', '17'),
(71, 29, '_menu_item_object', 'page'),
(72, 29, '_menu_item_target', ''),
(73, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 29, '_menu_item_xfn', ''),
(75, 29, '_menu_item_url', ''),
(76, 29, '_menu_item_orphaned', '1549586641'),
(77, 30, '_menu_item_type', 'post_type'),
(78, 30, '_menu_item_menu_item_parent', '0'),
(79, 30, '_menu_item_object_id', '19'),
(80, 30, '_menu_item_object', 'page'),
(81, 30, '_menu_item_target', ''),
(82, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 30, '_menu_item_xfn', ''),
(84, 30, '_menu_item_url', ''),
(85, 30, '_menu_item_orphaned', '1549586641'),
(86, 31, '_menu_item_type', 'post_type'),
(87, 31, '_menu_item_menu_item_parent', '0'),
(88, 31, '_menu_item_object_id', '22'),
(89, 31, '_menu_item_object', 'page'),
(90, 31, '_menu_item_target', ''),
(91, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 31, '_menu_item_xfn', ''),
(93, 31, '_menu_item_url', ''),
(94, 31, '_menu_item_orphaned', '1549586641'),
(95, 32, '_menu_item_type', 'post_type'),
(96, 32, '_menu_item_menu_item_parent', '0'),
(97, 32, '_menu_item_object_id', '2'),
(98, 32, '_menu_item_object', 'page'),
(99, 32, '_menu_item_target', ''),
(100, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 32, '_menu_item_xfn', ''),
(102, 32, '_menu_item_url', ''),
(104, 33, '_menu_item_type', 'post_type'),
(105, 33, '_menu_item_menu_item_parent', '0'),
(106, 33, '_menu_item_object_id', '13'),
(107, 33, '_menu_item_object', 'page'),
(108, 33, '_menu_item_target', ''),
(109, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 33, '_menu_item_xfn', ''),
(111, 33, '_menu_item_url', ''),
(113, 34, '_menu_item_type', 'post_type'),
(114, 34, '_menu_item_menu_item_parent', '0'),
(115, 34, '_menu_item_object_id', '11'),
(116, 34, '_menu_item_object', 'page'),
(117, 34, '_menu_item_target', ''),
(118, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 34, '_menu_item_xfn', ''),
(120, 34, '_menu_item_url', ''),
(122, 35, '_menu_item_type', 'post_type'),
(123, 35, '_menu_item_menu_item_parent', '0'),
(124, 35, '_menu_item_object_id', '2'),
(125, 35, '_menu_item_object', 'page'),
(126, 35, '_menu_item_target', ''),
(127, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 35, '_menu_item_xfn', ''),
(129, 35, '_menu_item_url', ''),
(130, 35, '_menu_item_orphaned', '1549586698'),
(131, 36, '_menu_item_type', 'post_type'),
(132, 36, '_menu_item_menu_item_parent', '45'),
(133, 36, '_menu_item_object_id', '15'),
(134, 36, '_menu_item_object', 'page'),
(135, 36, '_menu_item_target', ''),
(136, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 36, '_menu_item_xfn', ''),
(138, 36, '_menu_item_url', ''),
(140, 37, '_menu_item_type', 'post_type'),
(141, 37, '_menu_item_menu_item_parent', '45'),
(142, 37, '_menu_item_object_id', '17'),
(143, 37, '_menu_item_object', 'page'),
(144, 37, '_menu_item_target', ''),
(145, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 37, '_menu_item_xfn', ''),
(147, 37, '_menu_item_url', ''),
(149, 38, '_menu_item_type', 'post_type'),
(150, 38, '_menu_item_menu_item_parent', '45'),
(151, 38, '_menu_item_object_id', '19'),
(152, 38, '_menu_item_object', 'page'),
(153, 38, '_menu_item_target', ''),
(154, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 38, '_menu_item_xfn', ''),
(156, 38, '_menu_item_url', ''),
(158, 39, '_menu_item_type', 'post_type'),
(159, 39, '_menu_item_menu_item_parent', '45'),
(160, 39, '_menu_item_object_id', '22'),
(161, 39, '_menu_item_object', 'page'),
(162, 39, '_menu_item_target', ''),
(163, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 39, '_menu_item_xfn', ''),
(165, 39, '_menu_item_url', ''),
(167, 40, '_wp_attached_file', 'logo.png'),
(168, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:243;s:6:\"height\";i:60;s:4:\"file\";s:8:\"logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 40, '_wp_attachment_image_alt', 'BackBone Logo'),
(170, 41, '_wp_trash_meta_status', 'publish'),
(171, 41, '_wp_trash_meta_time', '1549588307'),
(172, 45, '_menu_item_type', 'custom'),
(173, 45, '_menu_item_menu_item_parent', '0'),
(174, 45, '_menu_item_object_id', '45'),
(175, 45, '_menu_item_object', 'custom'),
(176, 45, '_menu_item_target', ''),
(177, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 45, '_menu_item_xfn', ''),
(179, 45, '_menu_item_url', '#'),
(181, 46, '_wp_attached_file', 'header1.jpg'),
(182, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1439;s:6:\"height\";i:950;s:4:\"file\";s:11:\"header1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header1-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header1-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header1-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(183, 47, '_wp_attached_file', 'header2.jpg'),
(184, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:950;s:4:\"file\";s:11:\"header2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header2-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header2-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header2-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(185, 48, '_wp_attached_file', 'header3.jpg'),
(186, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:950;s:4:\"file\";s:11:\"header3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header3-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header3-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header3-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(187, 49, '_wp_attached_file', 'header4.jpg'),
(188, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:950;s:4:\"file\";s:11:\"header4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header4-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header4-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header4-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(189, 50, '_wp_attached_file', 'header5.jpg'),
(190, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:949;s:4:\"file\";s:11:\"header5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header5-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header5-768x506.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header5-1024x675.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(191, 51, '_wp_attached_file', 'header6.jpg'),
(192, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:950;s:4:\"file\";s:11:\"header6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header6-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header6-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header6-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(193, 52, '_wp_attached_file', 'header7.jpg'),
(194, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:950;s:4:\"file\";s:11:\"header7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header7-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header7-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header7-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(195, 13, '_thumbnail_id', '46'),
(196, 11, '_thumbnail_id', '47'),
(197, 2, '_thumbnail_id', '52'),
(198, 15, '_thumbnail_id', '48'),
(199, 17, '_thumbnail_id', '49'),
(200, 19, '_thumbnail_id', '50'),
(201, 22, '_thumbnail_id', '51'),
(202, 53, '_edit_last', '1'),
(203, 53, '_edit_lock', '1549694957:1'),
(204, 2, 'banner_image', '1'),
(205, 2, '_banner_image', 'field_5c5e7677fd4f2'),
(206, 55, 'banner_image', '1'),
(207, 55, '_banner_image', 'field_5c5e7677fd4f2'),
(208, 13, 'banner_image', '1'),
(209, 13, '_banner_image', 'field_5c5e7677fd4f2'),
(210, 56, 'banner_image', '1'),
(211, 56, '_banner_image', 'field_5c5e7677fd4f2'),
(212, 11, 'banner_image', '1'),
(213, 11, '_banner_image', 'field_5c5e7677fd4f2'),
(214, 57, 'banner_image', '1'),
(215, 57, '_banner_image', 'field_5c5e7677fd4f2'),
(216, 15, 'banner_image', '1'),
(217, 15, '_banner_image', 'field_5c5e7677fd4f2'),
(218, 58, 'banner_image', '1'),
(219, 58, '_banner_image', 'field_5c5e7677fd4f2'),
(220, 17, 'banner_image', '1'),
(221, 17, '_banner_image', 'field_5c5e7677fd4f2'),
(222, 59, 'banner_image', '1'),
(223, 59, '_banner_image', 'field_5c5e7677fd4f2'),
(224, 19, 'banner_image', '1'),
(225, 19, '_banner_image', 'field_5c5e7677fd4f2'),
(226, 60, 'banner_image', '1'),
(227, 60, '_banner_image', 'field_5c5e7677fd4f2'),
(228, 22, 'banner_image', '1'),
(229, 22, '_banner_image', 'field_5c5e7677fd4f2'),
(230, 61, 'banner_image', '1'),
(231, 61, '_banner_image', 'field_5c5e7677fd4f2'),
(232, 62, 'banner_image', '1'),
(233, 62, '_banner_image', 'field_5c5e7677fd4f2'),
(234, 63, 'banner_image', '1'),
(235, 63, '_banner_image', 'field_5c5e7677fd4f2'),
(236, 64, 'banner_image', '1'),
(237, 64, '_banner_image', 'field_5c5e7677fd4f2'),
(238, 65, 'banner_image', '1'),
(239, 65, '_banner_image', 'field_5c5e7677fd4f2'),
(240, 66, 'banner_image', '1'),
(241, 66, '_banner_image', 'field_5c5e7677fd4f2'),
(242, 67, 'banner_image', '1'),
(243, 67, '_banner_image', 'field_5c5e7677fd4f2'),
(244, 68, 'banner_image', '1'),
(245, 68, '_banner_image', 'field_5c5e7677fd4f2'),
(246, 3, '_edit_lock', '1549699122:1'),
(247, 70, '_edit_last', '1'),
(248, 70, '_edit_lock', '1549699457:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-07 03:24:02', '2019-02-07 03:24:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-02-07 03:24:02', '2019-02-07 03:24:02', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 0),
(2, 1, '2019-02-07 03:24:02', '2019-02-07 03:24:02', '<h1>This is a heading one</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h2>This is a heading two</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h3>This is heading three</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>&nbsp;</p>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-02-09 07:25:47', '2019-02-09 07:25:47', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-07 03:24:02', '2019-02-07 03:24:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-02-07 03:24:02', '2019-02-07 03:24:02', '', 0, 'http://localhost:8888/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-02-07 03:24:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-07 03:24:18', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=4', 0, 'post', '', 0),
(8, 1, '2019-02-09 07:24:36', '2019-02-09 07:24:36', '<h1>This is a heading one</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-02-09 07:24:36', '2019-02-09 07:24:36', '', 2, 'http://localhost:8888/2019/02/07/2-autosave-v1/', 0, 'revision', '', 0),
(9, 1, '2019-02-07 04:22:47', '2019-02-07 04:22:47', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-07 04:22:47', '2019-02-07 04:22:47', '', 2, 'http://localhost:8888/2019/02/07/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-02-08 00:41:40', '2019-02-08 00:41:40', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-08 00:41:40', '2019-02-08 00:41:40', '', 2, 'http://localhost:8888/2019/02/08/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-02-08 00:42:19', '2019-02-08 00:42:19', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-02-09 07:33:53', '2019-02-09 07:33:53', '', 0, 'http://localhost:8888/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-02-08 00:42:19', '2019-02-08 00:42:19', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-02-08 00:42:19', '2019-02-08 00:42:19', '', 11, 'http://localhost:8888/2019/02/08/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-02-08 00:42:28', '2019-02-08 00:42:28', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-02-09 07:34:01', '2019-02-09 07:34:01', '', 0, 'http://localhost:8888/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-02-08 00:42:28', '2019-02-08 00:42:28', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-02-08 00:42:28', '2019-02-08 00:42:28', '', 13, 'http://localhost:8888/2019/02/08/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-02-08 00:42:41', '2019-02-08 00:42:41', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-02-09 07:34:04', '2019-02-09 07:34:04', '', 0, 'http://localhost:8888/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-02-08 00:42:41', '2019-02-08 00:42:41', '', 'Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-02-08 00:42:41', '2019-02-08 00:42:41', '', 15, 'http://localhost:8888/2019/02/08/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-02-08 00:42:59', '2019-02-08 00:42:59', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Hosting', '', 'publish', 'closed', 'closed', '', 'hosting', '', '', '2019-02-09 07:34:11', '2019-02-09 07:34:11', '', 15, 'http://localhost:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-02-08 00:42:59', '2019-02-08 00:42:59', '', 'Hosting', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-08 00:42:59', '2019-02-08 00:42:59', '', 17, 'http://localhost:8888/2019/02/08/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-02-08 00:43:20', '2019-02-08 00:43:20', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Web Design', '', 'publish', 'closed', 'closed', '', 'web-design', '', '', '2019-02-09 07:34:27', '2019-02-09 07:34:27', '', 15, 'http://localhost:8888/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-02-08 00:43:20', '2019-02-08 00:43:20', '', 'Web Design', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-08 00:43:20', '2019-02-08 00:43:20', '', 19, 'http://localhost:8888/2019/02/08/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-02-08 00:43:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:43:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=21', 0, 'page', '', 0),
(22, 1, '2019-02-08 00:43:37', '2019-02-08 00:43:37', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Web Development', '', 'publish', 'closed', 'closed', '', 'web-development', '', '', '2019-02-09 07:34:34', '2019-02-09 07:34:34', '', 15, 'http://localhost:8888/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-02-08 00:43:37', '2019-02-08 00:43:37', '', 'Web Development', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-02-08 00:43:37', '2019-02-08 00:43:37', '', 22, 'http://localhost:8888/2019/02/08/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-02-08 00:44:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2019-02-08 00:44:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-02-08 00:44:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2019-02-08 00:44:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2019-02-08 00:44:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2019-02-08 00:44:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:01', '0000-00-00 00:00:00', '', 15, 'http://localhost:8888/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2019-02-08 00:44:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:01', '0000-00-00 00:00:00', '', 15, 'http://localhost:8888/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-02-08 00:44:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:01', '0000-00-00 00:00:00', '', 15, 'http://localhost:8888/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-02-08 00:45:31', '2019-02-08 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 0, 'http://localhost:8888/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2019-02-08 00:45:31', '2019-02-08 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 0, 'http://localhost:8888/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2019-02-08 00:45:31', '2019-02-08 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 0, 'http://localhost:8888/?p=34', 8, 'nav_menu_item', '', 0),
(35, 1, '2019-02-08 00:44:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-08 00:44:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2019-02-08 00:45:31', '2019-02-08 00:45:31', '', 'All Services', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 0, 'http://localhost:8888/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2019-02-08 00:45:31', '2019-02-08 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 15, 'http://localhost:8888/?p=37', 7, 'nav_menu_item', '', 0),
(38, 1, '2019-02-08 00:45:31', '2019-02-08 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 15, 'http://localhost:8888/?p=38', 6, 'nav_menu_item', '', 0),
(39, 1, '2019-02-08 00:45:31', '2019-02-08 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 15, 'http://localhost:8888/?p=39', 5, 'nav_menu_item', '', 0),
(40, 1, '2019-02-08 01:11:06', '2019-02-08 01:11:06', '', 'BackBone Logo', 'An awesome wordpress starter them', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-02-08 01:11:38', '2019-02-08 01:11:38', '', 0, 'http://localhost:8888/wp-content/uploads/logo.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-02-08 01:11:47', '2019-02-08 01:11:47', '{\n    \"BackBone::custom_logo\": {\n        \"value\": 40,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-08 01:11:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a3646b69-8ad3-4a5a-bb01-557be4e24d60', '', '', '2019-02-08 01:11:47', '2019-02-08 01:11:47', '', 0, 'http://localhost:8888/2019/02/08/a3646b69-8ad3-4a5a-bb01-557be4e24d60/', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(42, 1, '2019-02-09 00:15:38', '2019-02-09 00:15:38', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:15:38', '2019-02-09 00:15:38', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-02-09 00:16:13', '2019-02-09 00:16:13', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:16:13', '2019-02-09 00:16:13', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-02-09 00:18:23', '2019-02-09 00:18:23', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<h1>Lorem ipsum dolor</h1>\r\n<h2>sit amet, consectetur</h2>\r\n<h3>adipisicing elit, sed do</h3>\r\n<p>eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:18:23', '2019-02-09 00:18:23', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-02-09 00:43:03', '2019-02-09 00:43:03', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-02-09 01:30:51', '2019-02-09 01:30:51', '', 0, 'http://localhost:8888/?p=45', 3, 'nav_menu_item', '', 0),
(46, 1, '2019-02-09 06:38:26', '2019-02-09 06:38:26', '', 'header1', '', 'inherit', 'open', 'closed', '', 'header1', '', '', '2019-02-09 06:38:26', '2019-02-09 06:38:26', '', 0, 'http://localhost:8888/wp-content/uploads/header1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-02-09 06:38:27', '2019-02-09 06:38:27', '', 'header2', '', 'inherit', 'open', 'closed', '', 'header2', '', '', '2019-02-09 06:38:27', '2019-02-09 06:38:27', '', 0, 'http://localhost:8888/wp-content/uploads/header2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-02-09 06:38:29', '2019-02-09 06:38:29', '', 'header3', '', 'inherit', 'open', 'closed', '', 'header3', '', '', '2019-02-09 06:38:29', '2019-02-09 06:38:29', '', 0, 'http://localhost:8888/wp-content/uploads/header3.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-02-09 06:38:30', '2019-02-09 06:38:30', '', 'header4', '', 'inherit', 'open', 'closed', '', 'header4', '', '', '2019-02-09 06:38:30', '2019-02-09 06:38:30', '', 0, 'http://localhost:8888/wp-content/uploads/header4.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-02-09 06:38:31', '2019-02-09 06:38:31', '', 'header5', '', 'inherit', 'open', 'closed', '', 'header5', '', '', '2019-02-09 06:38:31', '2019-02-09 06:38:31', '', 0, 'http://localhost:8888/wp-content/uploads/header5.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-02-09 06:38:33', '2019-02-09 06:38:33', '', 'header6', '', 'inherit', 'open', 'closed', '', 'header6', '', '', '2019-02-09 06:38:33', '2019-02-09 06:38:33', '', 0, 'http://localhost:8888/wp-content/uploads/header6.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-02-09 06:40:01', '2019-02-09 06:40:01', '', 'header7', '', 'inherit', 'open', 'closed', '', 'header7', '', '', '2019-02-09 06:40:01', '2019-02-09 06:40:01', '', 0, 'http://localhost:8888/wp-content/uploads/header7.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-02-09 06:44:23', '2019-02-09 06:44:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Header', 'page-header', 'publish', 'closed', 'closed', '', 'group_5c5e766f51595', '', '', '2019-02-09 06:51:37', '2019-02-09 06:51:37', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(54, 1, '2019-02-09 06:44:23', '2019-02-09 06:44:23', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:32:\"Hide or show image banner header\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_5c5e7677fd4f2', '', '', '2019-02-09 06:51:37', '2019-02-09 06:51:37', '', 53, 'http://localhost:8888/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2019-02-09 06:51:50', '2019-02-09 06:51:50', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<h1>Lorem ipsum dolor</h1>\r\n<h2>sit amet, consectetur</h2>\r\n<h3>adipisicing elit, sed do</h3>\r\n<p>eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 06:51:50', '2019-02-09 06:51:50', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-02-09 07:09:33', '2019-02-09 07:09:33', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-02-09 07:09:33', '2019-02-09 07:09:33', '', 13, 'http://localhost:8888/2019/02/09/13-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-02-09 07:09:48', '2019-02-09 07:09:48', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-02-09 07:09:48', '2019-02-09 07:09:48', '', 11, 'http://localhost:8888/2019/02/09/11-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-02-09 07:09:55', '2019-02-09 07:09:55', '', 'Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-02-09 07:09:55', '2019-02-09 07:09:55', '', 15, 'http://localhost:8888/2019/02/09/15-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-02-09 07:10:00', '2019-02-09 07:10:00', '', 'Hosting', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-09 07:10:00', '2019-02-09 07:10:00', '', 17, 'http://localhost:8888/2019/02/09/17-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-02-09 07:10:03', '2019-02-09 07:10:03', '', 'Web Design', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-09 07:10:03', '2019-02-09 07:10:03', '', 19, 'http://localhost:8888/2019/02/09/19-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-02-09 07:10:09', '2019-02-09 07:10:09', '', 'Web Development', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-02-09 07:10:09', '2019-02-09 07:10:09', '', 22, 'http://localhost:8888/2019/02/09/22-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-02-09 07:25:47', '2019-02-09 07:25:47', '<h1>This is a heading one</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h2>This is a heading two</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h3>This is heading three</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>&nbsp;</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 07:25:47', '2019-02-09 07:25:47', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-02-09 07:33:53', '2019-02-09 07:33:53', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-02-09 07:33:53', '2019-02-09 07:33:53', '', 11, 'http://localhost:8888/2019/02/09/11-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(64, 1, '2019-02-09 07:34:01', '2019-02-09 07:34:01', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-02-09 07:34:01', '2019-02-09 07:34:01', '', 13, 'http://localhost:8888/2019/02/09/13-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-02-09 07:34:04', '2019-02-09 07:34:04', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-02-09 07:34:04', '2019-02-09 07:34:04', '', 15, 'http://localhost:8888/2019/02/09/15-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-02-09 07:34:11', '2019-02-09 07:34:11', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Hosting', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-09 07:34:11', '2019-02-09 07:34:11', '', 17, 'http://localhost:8888/2019/02/09/17-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-02-09 07:34:16', '2019-02-09 07:34:16', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Web Design', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-09 07:34:16', '2019-02-09 07:34:16', '', 19, 'http://localhost:8888/2019/02/09/19-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-02-09 07:34:22', '2019-02-09 07:34:22', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Web Development', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-02-09 07:34:22', '2019-02-09 07:34:22', '', 22, 'http://localhost:8888/2019/02/09/22-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-02-09 07:34:39', '2019-02-09 07:34:39', '<h1>This is a heading one</h1>\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n<h2>This is a heading two</h2>\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n<h3>This is heading three</h3>\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\n&nbsp;', 'Web Design', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2019-02-09 07:34:39', '2019-02-09 07:34:39', '', 19, 'http://localhost:8888/2019/02/09/19-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer Settings', 'footer-settings', 'publish', 'closed', 'closed', '', 'group_5c5e87179b3c9', '', '', '2019-02-09 08:02:19', '2019-02-09 08:02:19', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:24:\"Add links to site footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Footer Links', 'footer_links', 'publish', 'closed', 'closed', '', 'field_5c5e873737d9f', '', '', '2019-02-09 07:58:19', '2019-02-09 07:58:19', '', 70, 'http://localhost:8888/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"Type a label for the link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:4:\"Link\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Name', 'link_name', 'publish', 'closed', 'closed', '', 'field_5c5e876437da0', '', '', '2019-02-09 07:58:19', '2019-02-09 07:58:19', '', 71, 'http://localhost:8888/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:21:\"Select a page to link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Link URL', 'link_url', 'publish', 'closed', 'closed', '', 'field_5c5e879037da1', '', '', '2019-02-09 07:58:19', '2019-02-09 07:58:19', '', 71, 'http://localhost:8888/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:41:\"How you want the link to open in browser?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:4:\"null\";s:16:\"Same browser tab\";s:6:\"_blank\";s:15:\"New browser tab\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:1;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Link Target', 'link_target', 'publish', 'closed', 'closed', '', 'field_5c5e87bc37da2', '', '', '2019-02-09 08:02:19', '2019-02-09 08:02:19', '', 71, 'http://localhost:8888/?post_type=acf-field&#038;p=74', 2, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(45, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'true'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9313e823e4237e9d90f1e713978bf10f8831a0182e44f72a864d324d11c1f3f3\";a:4:{s:10:\"expiration\";i:1549866703;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:65.0) Gecko/20100101 Firefox/65.0\";s:5:\"login\";i:1549693903;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1549671369');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B5FIhV.Md7fQuG85cxxunJHCZ1BtNz/', 'root', 'omidiskawous@gmail.com', '', '2019-02-07 03:24:02', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

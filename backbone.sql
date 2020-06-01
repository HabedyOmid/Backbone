-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 01, 2020 at 03:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

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
(1, 'siteurl', 'https://backbone.test', 'yes'),
(2, 'home', 'https://backbone.test', 'yes'),
(3, 'blogname', 'BackBone', 'yes'),
(4, 'blogdescription', 'WP + Bootstrap 4.x Start Theme', 'yes'),
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
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:29:\"acf-extended/acf-extended.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
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
(48, 'db_version', '47018', 'yes'),
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
(61, 'medium_size_w', '450', 'yes'),
(62, 'medium_size_h', '450', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '992', 'yes'),
(65, 'large_size_h', '992', 'yes'),
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
(113, 'cron', 'a:6:{i:1552577043;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1552610511;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552620284;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566777615;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591113010;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549510822;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(117, 'auth_key', 'G5+-az2 [rO;]:qWem_q5Ne:>bq3*+NQ~[SK&j~OJ94{rK2^x1chrW9e6s6OaJ5k', 'no'),
(118, 'auth_salt', 'tgDvn}lsM^aI3hgo{g[(s+mte0eF/T9zZ1{.<}pQc2Hu65]H?#Q[`o$k^].R]p$?', 'no'),
(119, 'logged_in_key', '8S?aB]b:Za+ M]u#$:DG><.46C!`BUttX`xy_~~ZWOj)TgJ?=IU#smIKYeRdLB G', 'no'),
(120, 'logged_in_salt', 'exR|!tNQIo,o2H!ef-q2/s*J8!Qz>n.W9c{~Ix*Lq3}$x@47x|/7&}<A*>aj85y?', 'no'),
(147, 'WPLANG', '', 'yes'),
(148, 'new_admin_email', 'omidiskawous@gmail.com', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'current_theme', 'BackBone', 'yes'),
(157, 'theme_mods_BackBone', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:12:\"primary-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549510316;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:461;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(169, 'category_children', 'a:0:{}', 'yes'),
(172, 'acf_version', '5.8.11', 'yes'),
(178, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TkRjeU1ESjhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRVdE1ERXRNRFVnTVRnNk5UUTZOVFk9IjtzOjM6InVybCI7czoyMDoiaHR0cDovL2JhY2tib25lLnRlc3QiO30=', 'yes'),
(192, 'cptui_new_install', 'false', 'yes'),
(213, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
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
(310, 'db_upgraded', '', 'yes'),
(372, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591026631;s:7:\"checked\";a:1:{s:8:\"BackBone\";s:3:\"2.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(378, '_transient_doing_cron', '1591026629.2590560913085937500000', 'yes'),
(380, 'secure_auth_key', 'abF3 `U#|d~XVBA(YJmLXo{mC-{-k;eB}{BW/cia,0v0bwo%.MgKf(<gk*u/9*gw', 'no'),
(381, 'secure_auth_salt', 'wOvE)M+Kiq)/U_~9/g>I]}od*F-r !s6$hmh!ZOyRJO>/|,NdH|R1M_;7W!2v](M', 'no'),
(467, 'recovery_mode_email_last_sent', '1568584413', 'yes'),
(468, 'recovery_keys', 'a:1:{s:22:\"V6Le3owLtPH9LAwPozBZ3A\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B7WqfRwplDuaEjd.L2q0z5jr.jtb.O.\";s:10:\"created_at\";i:1568584413;}}', 'yes'),
(473, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(476, 'admin_email_lifespan', '1606578590', 'yes'),
(478, '_transient_timeout_acf_plugin_updates', '1591199427', 'no'),
(479, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.11\";}}', 'no'),
(480, '_site_transient_timeout_theme_roots', '1591028392', 'no'),
(481, '_site_transient_theme_roots', 'a:1:{s:8:\"BackBone\";s:7:\"/themes\";}', 'no'),
(482, '_site_transient_timeout_browser_d76066cd1ceaaa68be710a0b28118a46', '1591631392', 'no'),
(483, '_site_transient_browser_d76066cd1ceaaa68be710a0b28118a46', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(484, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1591631393', 'no'),
(485, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(490, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1591026630;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(491, 'can_compress_scripts', '0', 'no'),
(494, 'acfe', 'a:3:{s:7:\"version\";s:7:\"0.8.5.5\";s:7:\"modules\";a:10:{s:6:\"author\";a:1:{s:6:\"active\";b:1;}s:3:\"dev\";a:1:{s:6:\"active\";b:0;}s:4:\"meta\";a:1:{s:6:\"active\";b:0;}s:6:\"option\";a:1:{s:6:\"active\";b:1;}s:8:\"taxonomy\";a:1:{s:6:\"active\";b:1;}s:18:\"dynamic_block_type\";a:3:{s:6:\"active\";b:1;s:8:\"settings\";a:0:{}s:4:\"data\";a:0:{}}s:12:\"dynamic_form\";a:3:{s:6:\"active\";b:1;s:8:\"settings\";a:0:{}s:4:\"data\";a:0:{}}s:14:\"dynamic_option\";a:3:{s:6:\"active\";b:1;s:8:\"settings\";a:0:{}s:4:\"data\";a:0:{}}s:17:\"dynamic_post_type\";a:3:{s:6:\"active\";b:1;s:8:\"settings\";a:0:{}s:4:\"data\";a:0:{}}s:16:\"dynamic_taxonomy\";a:3:{s:6:\"active\";b:1;s:8:\"settings\";a:0:{}s:4:\"data\";a:0:{}}}s:8:\"upgrades\";a:0:{}}', 'yes'),
(495, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591026633;s:7:\"checked\";a:4:{s:29:\"acf-extended/acf-extended.php\";s:7:\"0.8.5.5\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.11\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.8.5.5\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(9, 2, '_edit_lock', '1566784596:1'),
(10, 2, '_edit_last', '1'),
(202, 53, '_edit_last', '1'),
(203, 53, '_edit_lock', '1549827213:1'),
(204, 2, 'banner_image', '1'),
(205, 2, '_banner_image', 'field_5c5e7677fd4f2'),
(206, 55, 'banner_image', '1'),
(207, 55, '_banner_image', 'field_5c5e7677fd4f2'),
(232, 62, 'banner_image', '1'),
(233, 62, '_banner_image', 'field_5c5e7677fd4f2'),
(247, 70, '_edit_last', '1'),
(248, 70, '_edit_lock', '1551910158:1'),
(1310, 265, '_menu_item_type', 'custom'),
(1311, 265, '_menu_item_menu_item_parent', '0'),
(1312, 265, '_menu_item_object_id', '265'),
(1313, 265, '_menu_item_object', 'custom'),
(1314, 265, '_menu_item_target', ''),
(1315, 265, '_menu_item_classes', 'a:1:{i:0;s:8:\"cta-link\";}'),
(1316, 265, '_menu_item_xfn', ''),
(1317, 265, '_menu_item_url', 'tel:1234567890'),
(1435, 53, '_wp_trash_meta_status', 'publish'),
(1436, 53, '_wp_trash_meta_time', '1556740825'),
(1437, 53, '_wp_desired_post_slug', 'group_5c5e766f51595'),
(1438, 54, '_wp_trash_meta_status', 'publish'),
(1439, 54, '_wp_trash_meta_time', '1556740825'),
(1440, 54, '_wp_desired_post_slug', 'field_5c5e7677fd4f2'),
(1441, 289, '_edit_lock', '1568583161:1'),
(1442, 289, '_edit_last', '1'),
(1461, 2, 'sections', 'a:1:{i:0;s:7:\"wysiwyg\";}'),
(1462, 2, '_sections', 'field_5c928803440f2'),
(1463, 346, 'banner_image', '1'),
(1464, 346, '_banner_image', 'field_5c5e7677fd4f2'),
(1465, 346, 'sections_0_visibility', '1'),
(1466, 346, '_sections_0_visibility', 'field_5c9288a7e7300'),
(1467, 346, 'sections_0_background', 'color'),
(1468, 346, '_sections_0_background', 'field_5c928a194f769'),
(1469, 346, 'sections_0_bg_color', 'u_bg_white'),
(1470, 346, '_sections_0_bg_color', 'field_5c9289d14f768'),
(1471, 346, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(1472, 346, '_sections_0_column_size', 'field_5c928aa032f2d'),
(1473, 346, 'sections_0_heading', ''),
(1474, 346, '_sections_0_heading', 'field_5c928aea32f2e'),
(1475, 346, 'sections_0_sub-heading', ''),
(1476, 346, '_sections_0_sub-heading', 'field_5c928b1832f2f'),
(1477, 346, 'sections_0_intro', ''),
(1478, 346, '_sections_0_intro', 'field_5c928b5432f30'),
(1479, 346, 'sections_0_has_cta', '0'),
(1480, 346, '_sections_0_has_cta', 'field_5c928ba532f32'),
(1481, 346, 'sections_0_card', ''),
(1482, 346, '_sections_0_card', 'field_5c928df65fb5b'),
(1483, 346, 'sections', 'a:1:{i:0;s:11:\"simple_card\";}'),
(1484, 346, '_sections', 'field_5c928803440f2'),
(1485, 347, 'banner_image', '1'),
(1486, 347, '_banner_image', 'field_5c5e7677fd4f2'),
(1487, 347, 'sections', ''),
(1488, 347, '_sections', 'field_5c928803440f2'),
(1489, 2, 'sections_0_background', 'color'),
(1490, 2, '_sections_0_background', 'field_5c93be37769e9'),
(1491, 2, 'sections_0_bg_color', 'u_bg_white'),
(1492, 2, '_sections_0_bg_color', 'field_5c93be82769ea'),
(1493, 2, 'sections_0_has_media', '--no-image'),
(1494, 2, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(1495, 2, 'sections_0_image', ''),
(1496, 2, '_sections_0_image', 'field_5c9a8db975838'),
(1497, 2, 'sections_0_align_media', '--to-left'),
(1498, 2, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(1499, 2, 'sections_0_heading', ''),
(1500, 2, '_sections_0_heading', 'field_5c9a8e1675839'),
(1501, 2, 'sections_0_sub-heading', ''),
(1502, 2, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(1503, 2, 'sections_0_intro_section', ''),
(1504, 2, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(1505, 2, 'sections_0_visibility', '1'),
(1506, 2, '_sections_0_visibility', 'field_5cc868a43f331'),
(1507, 2, 'sections_0_has_cta', '0'),
(1508, 2, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(1509, 348, 'banner_image', '1'),
(1510, 348, '_banner_image', 'field_5c5e7677fd4f2'),
(1511, 348, 'sections', 'a:1:{i:0;s:11:\"cta_section\";}'),
(1512, 348, '_sections', 'field_5c928803440f2'),
(1513, 348, 'sections_0_background', 'color'),
(1514, 348, '_sections_0_background', 'field_5c93be37769e9'),
(1515, 348, 'sections_0_bg_color', 'u_bg_white'),
(1516, 348, '_sections_0_bg_color', 'field_5c93be82769ea'),
(1517, 348, 'sections_0_has_media', '--has-image'),
(1518, 348, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(1519, 348, 'sections_0_image', ''),
(1520, 348, '_sections_0_image', 'field_5c9a8db975838'),
(1521, 348, 'sections_0_align_media', '--to-left'),
(1522, 348, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(1523, 348, 'sections_0_heading', ''),
(1524, 348, '_sections_0_heading', 'field_5c9a8e1675839'),
(1525, 348, 'sections_0_sub-heading', ''),
(1526, 348, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(1527, 348, 'sections_0_intro_section', ''),
(1528, 348, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(1529, 348, 'sections_0_visibility', '1'),
(1530, 348, '_sections_0_visibility', 'field_5c93bddd769e7'),
(1531, 348, 'sections_0_has_cta', '0'),
(1532, 348, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(1533, 2, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(1534, 2, '_sections_0_column_size', 'field_5c93bef6769ec'),
(1535, 2, 'sections_0_align_content', '--align_left'),
(1536, 2, '_sections_0_align_content', 'field_5c9a918453638'),
(1537, 349, 'banner_image', '1'),
(1538, 349, '_banner_image', 'field_5c5e7677fd4f2'),
(1539, 349, 'sections', 'a:1:{i:0;s:11:\"cta_section\";}'),
(1540, 349, '_sections', 'field_5c928803440f2'),
(1541, 349, 'sections_0_background', 'color'),
(1542, 349, '_sections_0_background', 'field_5c93be37769e9'),
(1543, 349, 'sections_0_bg_color', 'u_bg_white'),
(1544, 349, '_sections_0_bg_color', 'field_5c93be82769ea'),
(1545, 349, 'sections_0_has_media', '--no-image'),
(1546, 349, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(1547, 349, 'sections_0_image', ''),
(1548, 349, '_sections_0_image', 'field_5c9a8db975838'),
(1549, 349, 'sections_0_align_media', '--to-left'),
(1550, 349, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(1551, 349, 'sections_0_heading', ''),
(1552, 349, '_sections_0_heading', 'field_5c9a8e1675839'),
(1553, 349, 'sections_0_sub-heading', ''),
(1554, 349, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(1555, 349, 'sections_0_intro_section', ''),
(1556, 349, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(1557, 349, 'sections_0_visibility', '1'),
(1558, 349, '_sections_0_visibility', 'field_5c93bddd769e7'),
(1559, 349, 'sections_0_has_cta', '0'),
(1560, 349, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(1561, 349, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(1562, 349, '_sections_0_column_size', 'field_5c93bef6769ec'),
(1563, 349, 'sections_0_align_content', '--align_left'),
(1564, 349, '_sections_0_align_content', 'field_5c9a918453638'),
(1748, 350, '_edit_last', '1'),
(1749, 350, 'sections', ''),
(1750, 350, '_sections', 'field_5c928803440f2'),
(1751, 351, 'sections', ''),
(1752, 351, '_sections', 'field_5c928803440f2'),
(1753, 350, '_edit_lock', '1566781437:1'),
(1754, 70, '_wp_trash_meta_status', 'publish'),
(1755, 70, '_wp_trash_meta_time', '1566781405'),
(1756, 70, '_wp_desired_post_slug', 'group_5c5e87179b3c9'),
(1757, 71, '_wp_trash_meta_status', 'publish'),
(1758, 71, '_wp_trash_meta_time', '1566781405'),
(1759, 71, '_wp_desired_post_slug', 'field_5c5e873737d9f'),
(1760, 352, '_edit_last', '1'),
(1761, 352, 'sections', ''),
(1762, 352, '_sections', 'field_5c928803440f2'),
(1763, 353, 'sections', ''),
(1764, 353, '_sections', 'field_5c928803440f2'),
(1765, 352, '_edit_lock', '1566781392:1'),
(1793, 357, '_menu_item_type', 'post_type'),
(1794, 357, '_menu_item_menu_item_parent', '0'),
(1795, 357, '_menu_item_object_id', '352'),
(1796, 357, '_menu_item_object', 'page'),
(1797, 357, '_menu_item_target', ''),
(1798, 357, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1799, 357, '_menu_item_xfn', ''),
(1800, 357, '_menu_item_url', ''),
(1801, 357, '_menu_item_orphaned', '1566781528'),
(1802, 358, '_edit_last', '1'),
(1803, 358, 'sections', ''),
(1804, 358, '_sections', 'field_5c928803440f2'),
(1805, 359, 'sections', ''),
(1806, 359, '_sections', 'field_5c928803440f2'),
(1807, 358, '_edit_lock', '1566781403:1'),
(2057, 2, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2058, 2, '_sections_0_content', 'field_5d63382a334d1'),
(2059, 2, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2060, 2, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2061, 392, 'banner_image', '1'),
(2062, 392, '_banner_image', 'field_5c5e7677fd4f2'),
(2063, 392, 'sections', 'a:1:{i:0;s:7:\"wysiwyg\";}'),
(2064, 392, '_sections', 'field_5c928803440f2'),
(2065, 392, 'sections_0_background', 'color'),
(2066, 392, '_sections_0_background', 'field_5c93be37769e9'),
(2067, 392, 'sections_0_bg_color', 'u_bg_white'),
(2068, 392, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2069, 392, 'sections_0_has_media', '--no-image'),
(2070, 392, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2071, 392, 'sections_0_image', ''),
(2072, 392, '_sections_0_image', 'field_5c9a8db975838'),
(2073, 392, 'sections_0_align_media', '--to-left'),
(2074, 392, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2075, 392, 'sections_0_heading', ''),
(2076, 392, '_sections_0_heading', 'field_5c9a8e1675839'),
(2077, 392, 'sections_0_sub-heading', ''),
(2078, 392, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2079, 392, 'sections_0_intro_section', ''),
(2080, 392, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2081, 392, 'sections_0_visibility', '1'),
(2082, 392, '_sections_0_visibility', 'field_5cc868a43f331'),
(2083, 392, 'sections_0_has_cta', '0'),
(2084, 392, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2085, 392, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2086, 392, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2087, 392, 'sections_0_align_content', '--align_left'),
(2088, 392, '_sections_0_align_content', 'field_5c9a918453638'),
(2089, 392, 'sections_0_content', '<h1>Awesomeness!!!</h1>\r\n<strong> Lorem ipsum:</strong> dolor sit amet, consectetur adipisicing elit. Hic debitis<span style=\"text-decoration: underline;\"> quis, omnis vero incidunt totam id quam est harum sint</span>. Officia beatae harum saepe assumenda unde, rerum, iure aperiam <strong>minus</strong>.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et rem, laborum nesciunt facilis praesentium sapiente in, voluptates repellat, neque distinctio quas vel. Velit recusandae magnam <em>quidem ex minus, dicta ipsum!</em>Lorem ipsum dolor sit amet, consectetur adipisicing elit<strong>. Dolor tempora,</strong> alias quibusdam neque temporibus error optio, tempore, quo officiis nemo delectus necessitatibus. Inventore dolor, molestias, ipsam dolore hic similique totam?'),
(2090, 392, '_sections_0_content', 'field_5d63382a334d1'),
(2091, 392, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2092, 392, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2101, 395, 'banner_image', '1'),
(2102, 395, '_banner_image', 'field_5c5e7677fd4f2'),
(2103, 395, 'sections', 'a:2:{i:0;s:7:\"wysiwyg\";i:1;s:7:\"wysiwyg\";}'),
(2104, 395, '_sections', 'field_5c928803440f2'),
(2105, 395, 'sections_0_background', 'color'),
(2106, 395, '_sections_0_background', 'field_5c93be37769e9'),
(2107, 395, 'sections_0_bg_color', 'u_bg_white'),
(2108, 395, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2109, 395, 'sections_0_has_media', '--no-image'),
(2110, 395, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2111, 395, 'sections_0_image', ''),
(2112, 395, '_sections_0_image', 'field_5c9a8db975838'),
(2113, 395, 'sections_0_align_media', '--to-left'),
(2114, 395, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2115, 395, 'sections_0_heading', ''),
(2116, 395, '_sections_0_heading', 'field_5c9a8e1675839'),
(2117, 395, 'sections_0_sub-heading', ''),
(2118, 395, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2119, 395, 'sections_0_intro_section', ''),
(2120, 395, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2121, 395, 'sections_0_visibility', '1'),
(2122, 395, '_sections_0_visibility', 'field_5cc868a43f331'),
(2123, 395, 'sections_0_has_cta', '0'),
(2124, 395, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2125, 395, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2126, 395, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2127, 395, 'sections_0_align_content', '--align_left'),
(2128, 395, '_sections_0_align_content', 'field_5c9a918453638'),
(2129, 395, 'sections_0_content', '<h1>Awesomeness!!!</h1>\r\n<strong> Lorem ipsum:</strong> dolor sit amet, consectetur adipisicing elit. Hic debitis<span style=\"text-decoration: underline;\"> quis, omnis vero incidunt totam id quam est harum sint</span>. Officia beatae harum saepe assumenda unde, rerum, iure aperiam <strong>minus</strong>.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et rem, laborum nesciunt facilis praesentium sapiente in, voluptates repellat, neque distinctio quas vel. Velit recusandae magnam <em>quidem ex minus, dicta ipsum!</em>Lorem ipsum dolor sit amet, consectetur adipisicing elit<strong>. Dolor tempora,</strong> alias quibusdam neque temporibus error optio, tempore, quo officiis nemo delectus necessitatibus. Inventore dolor, molestias, ipsam dolore hic similique totam?'),
(2130, 395, '_sections_0_content', 'field_5d63382a334d1'),
(2131, 395, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2132, 395, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2133, 395, 'sections_1_visibility', '1'),
(2134, 395, '_sections_1_visibility', 'field_5cc868a43f331'),
(2135, 395, 'sections_1_content', ''),
(2136, 395, '_sections_1_content', 'field_5d63382a334d1'),
(2137, 395, 'sections_1_acfe_flexible_layout_title', 'WYSIWYG'),
(2138, 395, '_sections_1_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2139, 397, 'banner_image', '1'),
(2140, 397, '_banner_image', 'field_5c5e7677fd4f2'),
(2141, 397, 'sections', 'a:1:{i:0;s:7:\"wysiwyg\";}'),
(2142, 397, '_sections', 'field_5c928803440f2'),
(2143, 397, 'sections_0_background', 'color'),
(2144, 397, '_sections_0_background', 'field_5c93be37769e9'),
(2145, 397, 'sections_0_bg_color', 'u_bg_white'),
(2146, 397, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2147, 397, 'sections_0_has_media', '--no-image'),
(2148, 397, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2149, 397, 'sections_0_image', ''),
(2150, 397, '_sections_0_image', 'field_5c9a8db975838'),
(2151, 397, 'sections_0_align_media', '--to-left'),
(2152, 397, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2153, 397, 'sections_0_heading', ''),
(2154, 397, '_sections_0_heading', 'field_5c9a8e1675839'),
(2155, 397, 'sections_0_sub-heading', ''),
(2156, 397, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2157, 397, 'sections_0_intro_section', ''),
(2158, 397, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2159, 397, 'sections_0_visibility', '1'),
(2160, 397, '_sections_0_visibility', 'field_5cc868a43f331'),
(2161, 397, 'sections_0_has_cta', '0'),
(2162, 397, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2163, 397, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2164, 397, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2165, 397, 'sections_0_align_content', '--align_left'),
(2166, 397, '_sections_0_align_content', 'field_5c9a918453638'),
(2167, 397, 'sections_0_content', '<h1>Awesomeness!!!</h1>\r\n<strong> Lorem ipsum:</strong> dolor sit amet, consectetur adipisicing elit. Hic debitis<span style=\"text-decoration: underline;\"> quis, omnis vero incidunt totam id quam est harum sint</span>. Officia beatae harum saepe assumenda unde, rerum, iure aperiam <strong>minus</strong>.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et rem, laborum nesciunt facilis praesentium sapiente in, voluptates repellat, neque distinctio quas vel. Velit recusandae magnam <em>quidem ex minus, dicta ipsum!</em>Lorem ipsum dolor sit amet, consectetur adipisicing elit<strong>. Dolor tempora,</strong> alias quibusdam neque temporibus error optio, tempore, quo officiis nemo delectus necessitatibus. Inventore dolor, molestias, ipsam dolore hic similique totam?'),
(2168, 397, '_sections_0_content', 'field_5d63382a334d1'),
(2169, 397, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2170, 397, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2171, 400, 'banner_image', '1'),
(2172, 400, '_banner_image', 'field_5c5e7677fd4f2'),
(2173, 400, 'sections', 'a:1:{i:0;s:7:\"wysiwyg\";}'),
(2174, 400, '_sections', 'field_5c928803440f2'),
(2175, 400, 'sections_0_background', 'color'),
(2176, 400, '_sections_0_background', 'field_5c93be37769e9'),
(2177, 400, 'sections_0_bg_color', 'u_bg_white'),
(2178, 400, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2179, 400, 'sections_0_has_media', '--no-image'),
(2180, 400, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2181, 400, 'sections_0_image', ''),
(2182, 400, '_sections_0_image', 'field_5c9a8db975838'),
(2183, 400, 'sections_0_align_media', '--to-left'),
(2184, 400, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2185, 400, 'sections_0_heading', ''),
(2186, 400, '_sections_0_heading', 'field_5c9a8e1675839'),
(2187, 400, 'sections_0_sub-heading', ''),
(2188, 400, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2189, 400, 'sections_0_intro_section', ''),
(2190, 400, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2191, 400, 'sections_0_visibility', '1'),
(2192, 400, '_sections_0_visibility', 'field_5cc868a43f331'),
(2193, 400, 'sections_0_has_cta', '0'),
(2194, 400, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2195, 400, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2196, 400, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2197, 400, 'sections_0_align_content', '--align_left'),
(2198, 400, '_sections_0_align_content', 'field_5c9a918453638'),
(2199, 400, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2200, 400, '_sections_0_content', 'field_5d63382a334d1'),
(2201, 400, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2202, 400, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2206, 401, '_edit_last', '1'),
(2207, 401, 'sections', ''),
(2208, 401, '_sections', 'field_5c928803440f2'),
(2209, 402, 'sections', ''),
(2210, 402, '_sections', 'field_5c928803440f2'),
(2211, 401, '_edit_lock', '1568583170:1'),
(2212, 403, '_edit_last', '1'),
(2213, 403, 'sections', ''),
(2214, 403, '_sections', 'field_5c928803440f2'),
(2215, 404, 'sections', ''),
(2216, 404, '_sections', 'field_5c928803440f2'),
(2217, 403, '_edit_lock', '1568583136:1'),
(2218, 405, '_edit_last', '1'),
(2219, 405, 'sections', ''),
(2220, 405, '_sections', 'field_5c928803440f2'),
(2221, 406, 'sections', ''),
(2222, 406, '_sections', 'field_5c928803440f2'),
(2223, 405, '_edit_lock', '1568582981:1'),
(2224, 407, '_edit_last', '1'),
(2225, 407, 'sections', ''),
(2226, 407, '_sections', 'field_5c928803440f2'),
(2227, 408, 'sections', ''),
(2228, 408, '_sections', 'field_5c928803440f2'),
(2229, 407, '_edit_lock', '1568582990:1'),
(2230, 409, '_edit_last', '1'),
(2231, 409, 'sections', ''),
(2232, 409, '_sections', 'field_5c928803440f2'),
(2233, 410, 'sections', ''),
(2234, 410, '_sections', 'field_5c928803440f2'),
(2235, 409, '_edit_lock', '1568582999:1'),
(2236, 411, '_edit_last', '1'),
(2237, 411, 'sections', ''),
(2238, 411, '_sections', 'field_5c928803440f2'),
(2239, 412, 'sections', ''),
(2240, 412, '_sections', 'field_5c928803440f2'),
(2241, 411, '_edit_lock', '1568583005:1'),
(2242, 413, '_edit_last', '1'),
(2243, 413, 'sections', ''),
(2244, 413, '_sections', 'field_5c928803440f2'),
(2245, 414, 'sections', ''),
(2246, 414, '_sections', 'field_5c928803440f2'),
(2247, 413, '_edit_lock', '1568583017:1'),
(2248, 415, '_edit_last', '1'),
(2249, 415, 'sections', ''),
(2250, 415, '_sections', 'field_5c928803440f2'),
(2251, 416, 'sections', ''),
(2252, 416, '_sections', 'field_5c928803440f2'),
(2253, 415, '_edit_lock', '1568583024:1'),
(2254, 417, '_edit_last', '1'),
(2255, 417, 'sections', ''),
(2256, 417, '_sections', 'field_5c928803440f2'),
(2257, 418, 'sections', ''),
(2258, 418, '_sections', 'field_5c928803440f2'),
(2259, 417, '_edit_lock', '1568583032:1'),
(2260, 419, '_edit_last', '1'),
(2261, 419, 'sections', ''),
(2262, 419, '_sections', 'field_5c928803440f2'),
(2263, 420, 'sections', ''),
(2264, 420, '_sections', 'field_5c928803440f2'),
(2265, 419, '_edit_lock', '1568583038:1'),
(2266, 421, '_edit_last', '1'),
(2267, 421, 'sections', ''),
(2268, 421, '_sections', 'field_5c928803440f2'),
(2269, 422, 'sections', ''),
(2270, 422, '_sections', 'field_5c928803440f2'),
(2271, 421, '_edit_lock', '1568583047:1'),
(2272, 423, '_edit_last', '1'),
(2273, 423, 'sections', ''),
(2274, 423, '_sections', 'field_5c928803440f2'),
(2275, 424, 'sections', ''),
(2276, 424, '_sections', 'field_5c928803440f2'),
(2277, 423, '_edit_lock', '1568583053:1'),
(2278, 425, '_edit_last', '1'),
(2279, 425, 'sections', ''),
(2280, 425, '_sections', 'field_5c928803440f2'),
(2281, 426, 'sections', ''),
(2282, 426, '_sections', 'field_5c928803440f2'),
(2283, 425, '_edit_lock', '1568583062:1'),
(2284, 427, '_edit_last', '1'),
(2285, 427, 'sections', ''),
(2286, 427, '_sections', 'field_5c928803440f2'),
(2287, 428, 'sections', ''),
(2288, 428, '_sections', 'field_5c928803440f2'),
(2289, 427, '_edit_lock', '1568583067:1'),
(2290, 429, '_edit_last', '1'),
(2291, 429, 'sections', ''),
(2292, 429, '_sections', 'field_5c928803440f2'),
(2293, 430, 'sections', ''),
(2294, 430, '_sections', 'field_5c928803440f2'),
(2295, 429, '_edit_lock', '1568583074:1'),
(2296, 431, '_edit_last', '1'),
(2297, 431, 'sections', ''),
(2298, 431, '_sections', 'field_5c928803440f2'),
(2299, 432, 'sections', ''),
(2300, 432, '_sections', 'field_5c928803440f2'),
(2301, 431, '_edit_lock', '1568583081:1'),
(2302, 433, '_edit_last', '1'),
(2303, 433, 'sections', ''),
(2304, 433, '_sections', 'field_5c928803440f2'),
(2305, 434, 'sections', ''),
(2306, 434, '_sections', 'field_5c928803440f2'),
(2307, 433, '_edit_lock', '1568583088:1'),
(2308, 435, '_edit_last', '1'),
(2309, 435, 'sections', ''),
(2310, 435, '_sections', 'field_5c928803440f2'),
(2311, 436, 'sections', ''),
(2312, 436, '_sections', 'field_5c928803440f2'),
(2313, 435, '_edit_lock', '1568583291:1'),
(2314, 437, '_menu_item_type', 'post_type'),
(2315, 437, '_menu_item_menu_item_parent', '0'),
(2316, 437, '_menu_item_object_id', '2'),
(2317, 437, '_menu_item_object', 'page'),
(2318, 437, '_menu_item_target', ''),
(2319, 437, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2320, 437, '_menu_item_xfn', ''),
(2321, 437, '_menu_item_url', ''),
(2323, 438, '_menu_item_type', 'post_type'),
(2324, 438, '_menu_item_menu_item_parent', '0'),
(2325, 438, '_menu_item_object_id', '350'),
(2326, 438, '_menu_item_object', 'page'),
(2327, 438, '_menu_item_target', ''),
(2328, 438, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2329, 438, '_menu_item_xfn', ''),
(2330, 438, '_menu_item_url', ''),
(2332, 439, '_menu_item_type', 'post_type'),
(2333, 439, '_menu_item_menu_item_parent', '0'),
(2334, 439, '_menu_item_object_id', '352'),
(2335, 439, '_menu_item_object', 'page'),
(2336, 439, '_menu_item_target', ''),
(2337, 439, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2338, 439, '_menu_item_xfn', ''),
(2339, 439, '_menu_item_url', ''),
(2341, 440, '_menu_item_type', 'post_type'),
(2342, 440, '_menu_item_menu_item_parent', '439'),
(2343, 440, '_menu_item_object_id', '401'),
(2344, 440, '_menu_item_object', 'page'),
(2345, 440, '_menu_item_target', ''),
(2346, 440, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2347, 440, '_menu_item_xfn', ''),
(2348, 440, '_menu_item_url', ''),
(2350, 441, '_menu_item_type', 'post_type'),
(2351, 441, '_menu_item_menu_item_parent', '439'),
(2352, 441, '_menu_item_object_id', '403'),
(2353, 441, '_menu_item_object', 'page'),
(2354, 441, '_menu_item_target', ''),
(2355, 441, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2356, 441, '_menu_item_xfn', ''),
(2357, 441, '_menu_item_url', ''),
(2359, 442, '_menu_item_type', 'post_type'),
(2360, 442, '_menu_item_menu_item_parent', '0'),
(2361, 442, '_menu_item_object_id', '2'),
(2362, 442, '_menu_item_object', 'page'),
(2363, 442, '_menu_item_target', ''),
(2364, 442, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2365, 442, '_menu_item_xfn', ''),
(2366, 442, '_menu_item_url', ''),
(2367, 442, '_menu_item_orphaned', '1568583485'),
(2368, 443, '_menu_item_type', 'post_type'),
(2369, 443, '_menu_item_menu_item_parent', '0'),
(2370, 443, '_menu_item_object_id', '358'),
(2371, 443, '_menu_item_object', 'page'),
(2372, 443, '_menu_item_target', ''),
(2373, 443, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2374, 443, '_menu_item_xfn', ''),
(2375, 443, '_menu_item_url', ''),
(2377, 444, '_menu_item_type', 'post_type'),
(2378, 444, '_menu_item_menu_item_parent', '443'),
(2379, 444, '_menu_item_object_id', '405'),
(2380, 444, '_menu_item_object', 'page'),
(2381, 444, '_menu_item_target', ''),
(2382, 444, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2383, 444, '_menu_item_xfn', ''),
(2384, 444, '_menu_item_url', ''),
(2386, 445, '_menu_item_type', 'post_type'),
(2387, 445, '_menu_item_menu_item_parent', '444'),
(2388, 445, '_menu_item_object_id', '413'),
(2389, 445, '_menu_item_object', 'page'),
(2390, 445, '_menu_item_target', ''),
(2391, 445, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2392, 445, '_menu_item_xfn', ''),
(2393, 445, '_menu_item_url', ''),
(2395, 446, '_menu_item_type', 'post_type'),
(2396, 446, '_menu_item_menu_item_parent', '444'),
(2397, 446, '_menu_item_object_id', '415'),
(2398, 446, '_menu_item_object', 'page'),
(2399, 446, '_menu_item_target', ''),
(2400, 446, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2401, 446, '_menu_item_xfn', ''),
(2402, 446, '_menu_item_url', ''),
(2404, 447, '_menu_item_type', 'post_type'),
(2405, 447, '_menu_item_menu_item_parent', '444'),
(2406, 447, '_menu_item_object_id', '417'),
(2407, 447, '_menu_item_object', 'page'),
(2408, 447, '_menu_item_target', ''),
(2409, 447, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2410, 447, '_menu_item_xfn', ''),
(2411, 447, '_menu_item_url', ''),
(2413, 448, '_menu_item_type', 'post_type'),
(2414, 448, '_menu_item_menu_item_parent', '443'),
(2415, 448, '_menu_item_object_id', '407'),
(2416, 448, '_menu_item_object', 'page'),
(2417, 448, '_menu_item_target', ''),
(2418, 448, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2419, 448, '_menu_item_xfn', ''),
(2420, 448, '_menu_item_url', ''),
(2422, 449, '_menu_item_type', 'post_type'),
(2423, 449, '_menu_item_menu_item_parent', '448'),
(2424, 449, '_menu_item_object_id', '419'),
(2425, 449, '_menu_item_object', 'page'),
(2426, 449, '_menu_item_target', ''),
(2427, 449, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2428, 449, '_menu_item_xfn', ''),
(2429, 449, '_menu_item_url', ''),
(2431, 450, '_menu_item_type', 'post_type'),
(2432, 450, '_menu_item_menu_item_parent', '448'),
(2433, 450, '_menu_item_object_id', '421'),
(2434, 450, '_menu_item_object', 'page'),
(2435, 450, '_menu_item_target', ''),
(2436, 450, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2437, 450, '_menu_item_xfn', ''),
(2438, 450, '_menu_item_url', ''),
(2440, 451, '_menu_item_type', 'post_type'),
(2441, 451, '_menu_item_menu_item_parent', '448'),
(2442, 451, '_menu_item_object_id', '423'),
(2443, 451, '_menu_item_object', 'page'),
(2444, 451, '_menu_item_target', ''),
(2445, 451, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2446, 451, '_menu_item_xfn', ''),
(2447, 451, '_menu_item_url', ''),
(2449, 452, '_menu_item_type', 'post_type'),
(2450, 452, '_menu_item_menu_item_parent', '443'),
(2451, 452, '_menu_item_object_id', '409'),
(2452, 452, '_menu_item_object', 'page'),
(2453, 452, '_menu_item_target', ''),
(2454, 452, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2455, 452, '_menu_item_xfn', ''),
(2456, 452, '_menu_item_url', ''),
(2458, 453, '_menu_item_type', 'post_type'),
(2459, 453, '_menu_item_menu_item_parent', '452'),
(2460, 453, '_menu_item_object_id', '425'),
(2461, 453, '_menu_item_object', 'page'),
(2462, 453, '_menu_item_target', ''),
(2463, 453, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2464, 453, '_menu_item_xfn', ''),
(2465, 453, '_menu_item_url', ''),
(2467, 454, '_menu_item_type', 'post_type'),
(2468, 454, '_menu_item_menu_item_parent', '452'),
(2469, 454, '_menu_item_object_id', '427'),
(2470, 454, '_menu_item_object', 'page'),
(2471, 454, '_menu_item_target', ''),
(2472, 454, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2473, 454, '_menu_item_xfn', ''),
(2474, 454, '_menu_item_url', ''),
(2476, 455, '_menu_item_type', 'post_type'),
(2477, 455, '_menu_item_menu_item_parent', '452'),
(2478, 455, '_menu_item_object_id', '429'),
(2479, 455, '_menu_item_object', 'page'),
(2480, 455, '_menu_item_target', ''),
(2481, 455, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2482, 455, '_menu_item_xfn', ''),
(2483, 455, '_menu_item_url', ''),
(2485, 456, '_menu_item_type', 'post_type'),
(2486, 456, '_menu_item_menu_item_parent', '443'),
(2487, 456, '_menu_item_object_id', '411'),
(2488, 456, '_menu_item_object', 'page'),
(2489, 456, '_menu_item_target', ''),
(2490, 456, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2491, 456, '_menu_item_xfn', ''),
(2492, 456, '_menu_item_url', ''),
(2494, 457, '_menu_item_type', 'post_type'),
(2495, 457, '_menu_item_menu_item_parent', '456'),
(2496, 457, '_menu_item_object_id', '431'),
(2497, 457, '_menu_item_object', 'page'),
(2498, 457, '_menu_item_target', ''),
(2499, 457, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2500, 457, '_menu_item_xfn', ''),
(2501, 457, '_menu_item_url', ''),
(2503, 458, '_menu_item_type', 'post_type'),
(2504, 458, '_menu_item_menu_item_parent', '456'),
(2505, 458, '_menu_item_object_id', '433'),
(2506, 458, '_menu_item_object', 'page'),
(2507, 458, '_menu_item_target', ''),
(2508, 458, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2509, 458, '_menu_item_xfn', ''),
(2510, 458, '_menu_item_url', ''),
(2512, 459, '_menu_item_type', 'post_type'),
(2513, 459, '_menu_item_menu_item_parent', '456'),
(2514, 459, '_menu_item_object_id', '435'),
(2515, 459, '_menu_item_object', 'page'),
(2516, 459, '_menu_item_target', ''),
(2517, 459, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2518, 459, '_menu_item_xfn', ''),
(2519, 459, '_menu_item_url', ''),
(2523, 461, '_wp_attached_file', 'backbone.svg'),
(2524, 461, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:246;s:6:\"height\";i:35;s:4:\"file\";s:13:\"/backbone.svg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:12:\"backbone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"450\";s:6:\"height\";s:3:\"450\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"backbone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"backbone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:3:\"992\";s:6:\"height\";s:3:\"992\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"backbone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(2525, 462, '_wp_trash_meta_status', 'publish'),
(2526, 462, '_wp_trash_meta_time', '1568584660');

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
(2, 1, '2019-02-07 03:24:02', '2019-02-07 03:24:02', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-08-26 01:58:57', '2019-08-26 01:58:57', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(9, 1, '2019-02-07 04:22:47', '2019-02-07 04:22:47', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-07 04:22:47', '2019-02-07 04:22:47', '', 2, 'http://localhost:8888/2019/02/07/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-02-08 00:41:40', '2019-02-08 00:41:40', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-08 00:41:40', '2019-02-08 00:41:40', '', 2, 'http://localhost:8888/2019/02/08/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-02-09 00:15:38', '2019-02-09 00:15:38', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:15:38', '2019-02-09 00:15:38', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-02-09 00:16:13', '2019-02-09 00:16:13', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:16:13', '2019-02-09 00:16:13', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-02-09 00:18:23', '2019-02-09 00:18:23', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<h1>Lorem ipsum dolor</h1>\r\n<h2>sit amet, consectetur</h2>\r\n<h3>adipisicing elit, sed do</h3>\r\n<p>eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:18:23', '2019-02-09 00:18:23', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-02-09 06:44:23', '2019-02-09 06:44:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Header', 'page-header', 'trash', 'closed', 'closed', '', 'group_5c5e766f51595__trashed', '', '', '2019-05-01 20:00:25', '2019-05-01 20:00:25', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(54, 1, '2019-02-09 06:44:23', '2019-02-09 06:44:23', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:32:\"Hide or show image banner header\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";}', 'Banner Image', 'banner_image', 'trash', 'closed', 'closed', '', 'field_5c5e7677fd4f2__trashed', '', '', '2019-05-01 20:00:25', '2019-05-01 20:00:25', '', 53, 'http://localhost:8888/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2019-02-09 06:51:50', '2019-02-09 06:51:50', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<h1>Lorem ipsum dolor</h1>\r\n<h2>sit amet, consectetur</h2>\r\n<h3>adipisicing elit, sed do</h3>\r\n<p>eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 06:51:50', '2019-02-09 06:51:50', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-02-09 07:25:47', '2019-02-09 07:25:47', '<h1>This is a heading one</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h2>This is a heading two</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h3>This is heading three</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>&nbsp;</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 07:25:47', '2019-02-09 07:25:47', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer Settings', 'footer-settings', 'trash', 'closed', 'closed', '', 'group_5c5e87179b3c9__trashed', '', '', '2019-08-26 01:03:25', '2019-08-26 01:03:25', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:24:\"Add links to site footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Footer Links', 'footer_links', 'trash', 'closed', 'closed', '', 'field_5c5e873737d9f__trashed', '', '', '2019-08-26 01:03:25', '2019-08-26 01:03:25', '', 70, 'http://localhost:8888/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"Type a label for the link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:4:\"Link\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Name', 'link_name', 'publish', 'closed', 'closed', '', 'field_5c5e876437da0', '', '', '2019-02-09 07:58:19', '2019-02-09 07:58:19', '', 71, 'http://localhost:8888/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:21:\"Select a page to link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Link URL', 'link_url', 'publish', 'closed', 'closed', '', 'field_5c5e879037da1', '', '', '2019-02-09 07:58:19', '2019-02-09 07:58:19', '', 71, 'http://localhost:8888/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:41:\"How you want the link to open in browser?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:4:\"null\";s:16:\"Same browser tab\";s:6:\"_blank\";s:15:\"New browser tab\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:1;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Link Target', 'link_target', 'publish', 'closed', 'closed', '', 'field_5c5e87bc37da2', '', '', '2019-02-09 08:02:19', '2019-02-09 08:02:19', '', 71, 'http://localhost:8888/?post_type=acf-field&#038;p=74', 2, 'acf-field', '', 0),
(75, 1, '2019-03-14 13:28:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-14 13:28:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=75', 0, 'post', '', 0),
(265, 1, '2019-04-26 13:43:20', '2019-04-26 13:43:20', '', 'Let\'s Chat', '', 'publish', 'closed', 'closed', '', 'lets-chat', '', '', '2019-09-15 21:39:05', '2019-09-15 21:39:05', '', 0, 'https://versacreative.test/?p=265', 23, 'nav_menu_item', '', 0),
(289, 1, '2019-05-01 19:59:51', '2019-05-01 19:59:51', 'a:12:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:18:\"acfe_display_title\";s:0:\"\";s:13:\"acfe_autosync\";s:0:\"\";s:16:\"acfe_permissions\";s:0:\"\";s:9:\"acfe_note\";s:0:\"\";s:9:\"acfe_meta\";s:0:\"\";}', 'Add Section', 'add-section', 'publish', 'closed', 'closed', '', 'group_5c9287fec593e', '', '', '2019-09-15 21:35:02', '2019-09-15 21:35:02', '', 0, 'https://versacreative.test/?p=289', 0, 'acf-field-group', '', 0),
(290, 1, '2019-05-01 19:59:51', '2019-05-01 19:59:51', 'a:17:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:16:\"acfe_permissions\";s:0:\"\";s:29:\"acfe_flexible_stylised_button\";i:1;s:32:\"acfe_flexible_layouts_thumbnails\";i:1;s:31:\"acfe_flexible_layouts_templates\";i:0;s:26:\"acfe_flexible_close_button\";i:0;s:24:\"acfe_flexible_copy_paste\";i:1;s:27:\"acfe_flexible_modal_edition\";i:1;s:19:\"acfe_flexible_modal\";a:4:{s:27:\"acfe_flexible_modal_enabled\";s:1:\"1\";s:25:\"acfe_flexible_modal_title\";s:0:\"\";s:23:\"acfe_flexible_modal_col\";s:1:\"4\";s:30:\"acfe_flexible_modal_categories\";s:1:\"0\";}s:7:\"layouts\";a:1:{s:20:\"layout_5cc85e757124c\";a:7:{s:3:\"key\";s:20:\"layout_5cc85e757124c\";s:5:\"label\";s:7:\"WYSIWYG\";s:4:\"name\";s:7:\"wysiwyg\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:23:\"acfe_flexible_thumbnail\";s:3:\"393\";}}s:12:\"button_label\";s:11:\"Add Section\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Sections', 'sections', 'publish', 'closed', 'closed', '', 'field_5c928803440f2', '', '', '2019-08-26 01:53:06', '2019-08-26 01:53:06', '', 289, 'https://versacreative.test/?post_type=acf-field&#038;p=290', 0, 'acf-field', '', 0),
(336, 1, '2019-05-01 19:59:51', '2019-05-01 19:59:51', 'a:14:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:23:\"Hide/Show this section?\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5cc85e757124c\";s:16:\"acfe_permissions\";s:0:\"\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";s:13:\"acfe_validate\";s:0:\"\";s:11:\"acfe_update\";s:0:\"\";}', 'Visibility', 'visibility', 'publish', 'closed', 'closed', '', 'field_5cc868a43f331', '', '', '2019-08-26 01:39:14', '2019-08-26 01:39:14', '', 290, 'https://versacreative.test/?post_type=acf-field&#038;p=336', 0, 'acf-field', '', 0),
(346, 1, '2019-05-01 20:04:31', '2019-05-01 20:04:31', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:04:31', '2019-05-01 20:04:31', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(347, 1, '2019-05-01 20:09:43', '2019-05-01 20:09:43', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:09:43', '2019-05-01 20:09:43', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(348, 1, '2019-05-01 20:11:32', '2019-05-01 20:11:32', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:11:32', '2019-05-01 20:11:32', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(349, 1, '2019-05-01 20:13:46', '2019-05-01 20:13:46', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:13:46', '2019-05-01 20:13:46', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(350, 1, '2019-08-26 01:03:13', '2019-08-26 01:03:13', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-08-26 01:03:13', '2019-08-26 01:03:13', '', 0, 'http://backbone.test/?page_id=350', 0, 'page', '', 0),
(351, 1, '2019-08-26 01:03:13', '2019-08-26 01:03:13', '', 'About', '', 'inherit', 'closed', 'closed', '', '350-revision-v1', '', '', '2019-08-26 01:03:13', '2019-08-26 01:03:13', '', 350, 'http://backbone.test/2019/08/26/350-revision-v1/', 0, 'revision', '', 0),
(352, 1, '2019-08-26 01:05:18', '2019-08-26 01:05:18', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-08-26 01:05:18', '2019-08-26 01:05:18', '', 0, 'http://backbone.test/?page_id=352', 0, 'page', '', 0),
(353, 1, '2019-08-26 01:04:17', '2019-08-26 01:04:17', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '352-revision-v1', '', '', '2019-08-26 01:04:17', '2019-08-26 01:04:17', '', 352, 'http://backbone.test/2019/08/26/352-revision-v1/', 0, 'revision', '', 0),
(357, 1, '2019-08-26 01:05:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-26 01:05:28', '0000-00-00 00:00:00', '', 0, 'http://backbone.test/?p=357', 1, 'nav_menu_item', '', 0),
(358, 1, '2019-08-26 01:05:45', '2019-08-26 01:05:45', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-08-26 01:05:45', '2019-08-26 01:05:45', '', 0, 'http://backbone.test/?page_id=358', 0, 'page', '', 0),
(359, 1, '2019-08-26 01:05:42', '2019-08-26 01:05:42', '', 'Services', '', 'inherit', 'closed', 'closed', '', '358-revision-v1', '', '', '2019-08-26 01:05:42', '2019-08-26 01:05:42', '', 358, 'http://backbone.test/2019/08/26/358-revision-v1/', 0, 'revision', '', 0),
(367, 1, '2019-08-26 01:20:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-26 01:20:07', '0000-00-00 00:00:00', '', 0, 'http://backbone.test/?page_id=367', 0, 'page', '', 0),
(390, 1, '2019-08-26 01:39:14', '2019-08-26 01:39:14', 'a:14:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5cc868a43f331\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5cc85e757124c\";s:16:\"acfe_permissions\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:13:\"acfe_validate\";s:0:\"\";s:11:\"acfe_update\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5d63382a334d1', '', '', '2019-08-26 01:39:14', '2019-08-26 01:39:14', '', 290, 'http://backbone.test/?post_type=acf-field&p=390', 1, 'acf-field', '', 0),
(391, 1, '2019-08-26 01:42:57', '2019-08-26 01:42:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:42:57', '2019-08-26 01:42:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(392, 1, '2019-08-26 01:42:57', '2019-08-26 01:42:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:42:57', '2019-08-26 01:42:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(394, 1, '2019-08-26 01:43:50', '2019-08-26 01:43:50', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:50', '2019-08-26 01:43:50', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(395, 1, '2019-08-26 01:43:50', '2019-08-26 01:43:50', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:50', '2019-08-26 01:43:50', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(396, 1, '2019-08-26 01:43:56', '2019-08-26 01:43:56', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:56', '2019-08-26 01:43:56', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(397, 1, '2019-08-26 01:43:56', '2019-08-26 01:43:56', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:56', '2019-08-26 01:43:56', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(398, 1, '2019-08-26 01:56:42', '2019-08-26 01:56:42', '<h1>This is a heading one</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<h2>This is a heading two</h2>\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<h3>This is heading three</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p> </p>\n\n<!-- wp:cover -->\n<div class=\"wp-block-cover has-background-dim\"><div class=\"wp-block-cover__inner-container\"></div></div>\n<!-- /wp:cover -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-08-26 01:56:42', '2019-08-26 01:56:42', '', 2, 'http://backbone.test/2019/08/26/2-autosave-v1/', 0, 'revision', '', 0),
(399, 1, '2019-08-26 01:58:57', '2019-08-26 01:58:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:58:57', '2019-08-26 01:58:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(400, 1, '2019-08-26 01:58:57', '2019-08-26 01:58:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:58:57', '2019-08-26 01:58:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(401, 1, '2019-09-15 21:31:38', '2019-09-15 21:31:38', '', 'Contact 1', '', 'publish', 'closed', 'closed', '', 'contact-1', '', '', '2019-09-15 21:35:28', '2019-09-15 21:35:28', '', 352, 'http://backbone.test/?page_id=401', 0, 'page', '', 0),
(402, 1, '2019-09-15 21:31:35', '2019-09-15 21:31:35', '', 'Contact 1', '', 'inherit', 'closed', 'closed', '', '401-revision-v1', '', '', '2019-09-15 21:31:35', '2019-09-15 21:31:35', '', 401, 'http://backbone.test/2019/09/15/401-revision-v1/', 0, 'revision', '', 0),
(403, 1, '2019-09-15 21:31:50', '2019-09-15 21:31:50', '', 'Contact 2', '', 'publish', 'closed', 'closed', '', 'contact-2', '', '', '2019-09-15 21:35:28', '2019-09-15 21:35:28', '', 352, 'http://backbone.test/?page_id=403', 0, 'page', '', 0),
(404, 1, '2019-09-15 21:31:47', '2019-09-15 21:31:47', '', 'Contact 2', '', 'inherit', 'closed', 'closed', '', '403-revision-v1', '', '', '2019-09-15 21:31:47', '2019-09-15 21:31:47', '', 403, 'http://backbone.test/2019/09/15/403-revision-v1/', 0, 'revision', '', 0),
(405, 1, '2019-09-15 21:32:03', '2019-09-15 21:32:03', '', 'Service 1', '', 'publish', 'closed', 'closed', '', 'service-1', '', '', '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 358, 'http://backbone.test/?page_id=405', 0, 'page', '', 0),
(406, 1, '2019-09-15 21:32:00', '2019-09-15 21:32:00', '', 'Service 1', '', 'inherit', 'closed', 'closed', '', '405-revision-v1', '', '', '2019-09-15 21:32:00', '2019-09-15 21:32:00', '', 405, 'http://backbone.test/2019/09/15/405-revision-v1/', 0, 'revision', '', 0),
(407, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 2', '', 'publish', 'closed', 'closed', '', 'service-2', '', '', '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 358, 'http://backbone.test/?page_id=407', 0, 'page', '', 0),
(408, 1, '2019-09-15 21:32:12', '2019-09-15 21:32:12', '', 'Service 2', '', 'inherit', 'closed', 'closed', '', '407-revision-v1', '', '', '2019-09-15 21:32:12', '2019-09-15 21:32:12', '', 407, 'http://backbone.test/2019/09/15/407-revision-v1/', 0, 'revision', '', 0),
(409, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 3', '', 'publish', 'closed', 'closed', '', 'service-3', '', '', '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 358, 'http://backbone.test/?page_id=409', 0, 'page', '', 0),
(410, 1, '2019-09-15 21:32:21', '2019-09-15 21:32:21', '', 'Service 3', '', 'inherit', 'closed', 'closed', '', '409-revision-v1', '', '', '2019-09-15 21:32:21', '2019-09-15 21:32:21', '', 409, 'http://backbone.test/2019/09/15/409-revision-v1/', 0, 'revision', '', 0),
(411, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 4', '', 'publish', 'closed', 'closed', '', 'service-4', '', '', '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 358, 'http://backbone.test/?page_id=411', 0, 'page', '', 0),
(412, 1, '2019-09-15 21:32:27', '2019-09-15 21:32:27', '', 'Service 4', '', 'inherit', 'closed', 'closed', '', '411-revision-v1', '', '', '2019-09-15 21:32:27', '2019-09-15 21:32:27', '', 411, 'http://backbone.test/2019/09/15/411-revision-v1/', 0, 'revision', '', 0),
(413, 1, '2019-09-15 21:32:39', '2019-09-15 21:32:39', '', 'Service 1.1', '', 'publish', 'closed', 'closed', '', 'service-1-1', '', '', '2019-09-15 21:36:56', '2019-09-15 21:36:56', '', 405, 'http://backbone.test/?page_id=413', 0, 'page', '', 0),
(414, 1, '2019-09-15 21:32:37', '2019-09-15 21:32:37', '', 'Service 1.1', '', 'inherit', 'closed', 'closed', '', '413-revision-v1', '', '', '2019-09-15 21:32:37', '2019-09-15 21:32:37', '', 413, 'http://backbone.test/2019/09/15/413-revision-v1/', 0, 'revision', '', 0),
(415, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 1.2', '', 'publish', 'closed', 'closed', '', 'service-1-2', '', '', '2019-09-15 21:36:56', '2019-09-15 21:36:56', '', 405, 'http://backbone.test/?page_id=415', 0, 'page', '', 0),
(416, 1, '2019-09-15 21:32:46', '2019-09-15 21:32:46', '', 'Service 1.2', '', 'inherit', 'closed', 'closed', '', '415-revision-v1', '', '', '2019-09-15 21:32:46', '2019-09-15 21:32:46', '', 415, 'http://backbone.test/2019/09/15/415-revision-v1/', 0, 'revision', '', 0),
(417, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 1.3', '', 'publish', 'closed', 'closed', '', 'service-1-3', '', '', '2019-09-15 21:36:56', '2019-09-15 21:36:56', '', 405, 'http://backbone.test/?page_id=417', 0, 'page', '', 0),
(418, 1, '2019-09-15 21:32:54', '2019-09-15 21:32:54', '', 'Service 1.3', '', 'inherit', 'closed', 'closed', '', '417-revision-v1', '', '', '2019-09-15 21:32:54', '2019-09-15 21:32:54', '', 417, 'http://backbone.test/2019/09/15/417-revision-v1/', 0, 'revision', '', 0),
(419, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 2.1', '', 'publish', 'closed', 'closed', '', 'service-2-1', '', '', '2019-09-15 21:37:32', '2019-09-15 21:37:32', '', 407, 'http://backbone.test/?page_id=419', 0, 'page', '', 0),
(420, 1, '2019-09-15 21:33:00', '2019-09-15 21:33:00', '', 'Service 2.1', '', 'inherit', 'closed', 'closed', '', '419-revision-v1', '', '', '2019-09-15 21:33:00', '2019-09-15 21:33:00', '', 419, 'http://backbone.test/2019/09/15/419-revision-v1/', 0, 'revision', '', 0),
(421, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 2.2', '', 'publish', 'closed', 'closed', '', 'service-2-2', '', '', '2019-09-15 21:37:32', '2019-09-15 21:37:32', '', 407, 'http://backbone.test/?page_id=421', 0, 'page', '', 0),
(422, 1, '2019-09-15 21:33:08', '2019-09-15 21:33:08', '', 'Service 2.2', '', 'inherit', 'closed', 'closed', '', '421-revision-v1', '', '', '2019-09-15 21:33:08', '2019-09-15 21:33:08', '', 421, 'http://backbone.test/2019/09/15/421-revision-v1/', 0, 'revision', '', 0),
(423, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 2.3', '', 'publish', 'closed', 'closed', '', 'service-2-3', '', '', '2019-09-15 21:37:32', '2019-09-15 21:37:32', '', 407, 'http://backbone.test/?page_id=423', 0, 'page', '', 0),
(424, 1, '2019-09-15 21:33:16', '2019-09-15 21:33:16', '', 'Service 2.3', '', 'inherit', 'closed', 'closed', '', '423-revision-v1', '', '', '2019-09-15 21:33:16', '2019-09-15 21:33:16', '', 423, 'http://backbone.test/2019/09/15/423-revision-v1/', 0, 'revision', '', 0),
(425, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 3.1', '', 'publish', 'closed', 'closed', '', 'service-3-1', '', '', '2019-09-15 21:37:51', '2019-09-15 21:37:51', '', 409, 'http://backbone.test/?page_id=425', 0, 'page', '', 0),
(426, 1, '2019-09-15 21:33:24', '2019-09-15 21:33:24', '', 'Service 3.1', '', 'inherit', 'closed', 'closed', '', '425-revision-v1', '', '', '2019-09-15 21:33:24', '2019-09-15 21:33:24', '', 425, 'http://backbone.test/2019/09/15/425-revision-v1/', 0, 'revision', '', 0),
(427, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 3.2', '', 'publish', 'closed', 'closed', '', 'service-3-2', '', '', '2019-09-15 21:37:51', '2019-09-15 21:37:51', '', 409, 'http://backbone.test/?page_id=427', 0, 'page', '', 0),
(428, 1, '2019-09-15 21:33:30', '2019-09-15 21:33:30', '', 'Service 3.2', '', 'inherit', 'closed', 'closed', '', '427-revision-v1', '', '', '2019-09-15 21:33:30', '2019-09-15 21:33:30', '', 427, 'http://backbone.test/2019/09/15/427-revision-v1/', 0, 'revision', '', 0),
(429, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 3.3', '', 'publish', 'closed', 'closed', '', 'service-3-3', '', '', '2019-09-15 21:37:51', '2019-09-15 21:37:51', '', 409, 'http://backbone.test/?page_id=429', 0, 'page', '', 0),
(430, 1, '2019-09-15 21:33:37', '2019-09-15 21:33:37', '', 'Service 3.3', '', 'inherit', 'closed', 'closed', '', '429-revision-v1', '', '', '2019-09-15 21:33:37', '2019-09-15 21:33:37', '', 429, 'http://backbone.test/2019/09/15/429-revision-v1/', 0, 'revision', '', 0),
(431, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 4.1', '', 'publish', 'closed', 'closed', '', 'service-4-1', '', '', '2019-09-15 21:36:33', '2019-09-15 21:36:33', '', 411, 'http://backbone.test/?page_id=431', 0, 'page', '', 0),
(432, 1, '2019-09-15 21:33:43', '2019-09-15 21:33:43', '', 'Service 4.1', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2019-09-15 21:33:43', '2019-09-15 21:33:43', '', 431, 'http://backbone.test/2019/09/15/431-revision-v1/', 0, 'revision', '', 0),
(433, 1, '2019-09-15 21:36:05', '2019-09-15 21:36:05', '', 'Service 4.2', '', 'publish', 'closed', 'closed', '', 'service-4-2', '', '', '2019-09-15 21:36:33', '2019-09-15 21:36:33', '', 411, 'http://backbone.test/?page_id=433', 0, 'page', '', 0),
(434, 1, '2019-09-15 21:33:50', '2019-09-15 21:33:50', '', 'Service 4.2', '', 'inherit', 'closed', 'closed', '', '433-revision-v1', '', '', '2019-09-15 21:33:50', '2019-09-15 21:33:50', '', 433, 'http://backbone.test/2019/09/15/433-revision-v1/', 0, 'revision', '', 0),
(435, 1, '2019-09-15 21:37:13', '2019-09-15 21:37:13', '', 'Service 4.3', '', 'publish', 'closed', 'closed', '', 'service-4-3', '', '', '2019-09-15 21:37:13', '2019-09-15 21:37:13', '', 411, 'http://backbone.test/?page_id=435', 0, 'page', '', 0),
(436, 1, '2019-09-15 21:33:56', '2019-09-15 21:33:56', '', 'Service 4.3', '', 'inherit', 'closed', 'closed', '', '435-revision-v1', '', '', '2019-09-15 21:33:56', '2019-09-15 21:33:56', '', 435, 'http://backbone.test/2019/09/15/435-revision-v1/', 0, 'revision', '', 0),
(437, 1, '2019-09-15 21:39:03', '2019-09-15 21:39:03', ' ', '', '', 'publish', 'closed', 'closed', '', '437', '', '', '2019-09-15 21:39:03', '2019-09-15 21:39:03', '', 0, 'http://backbone.test/?p=437', 1, 'nav_menu_item', '', 0),
(438, 1, '2019-09-15 21:39:03', '2019-09-15 21:39:03', ' ', '', '', 'publish', 'closed', 'closed', '', '438', '', '', '2019-09-15 21:39:03', '2019-09-15 21:39:03', '', 0, 'http://backbone.test/?p=438', 2, 'nav_menu_item', '', 0),
(439, 1, '2019-09-15 21:39:03', '2019-09-15 21:39:03', ' ', '', '', 'publish', 'closed', 'closed', '', '439', '', '', '2019-09-15 21:39:03', '2019-09-15 21:39:03', '', 0, 'http://backbone.test/?p=439', 3, 'nav_menu_item', '', 0),
(440, 1, '2019-09-15 21:39:03', '2019-09-15 21:39:03', ' ', '', '', 'publish', 'closed', 'closed', '', '440', '', '', '2019-09-15 21:39:03', '2019-09-15 21:39:03', '', 352, 'http://backbone.test/?p=440', 4, 'nav_menu_item', '', 0),
(441, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '441', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 352, 'http://backbone.test/?p=441', 5, 'nav_menu_item', '', 0),
(442, 1, '2019-09-15 21:38:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-15 21:38:05', '0000-00-00 00:00:00', '', 0, 'http://backbone.test/?p=442', 1, 'nav_menu_item', '', 0),
(443, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '443', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 0, 'http://backbone.test/?p=443', 6, 'nav_menu_item', '', 0),
(444, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '444', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 358, 'http://backbone.test/?p=444', 7, 'nav_menu_item', '', 0),
(445, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '445', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 405, 'http://backbone.test/?p=445', 8, 'nav_menu_item', '', 0),
(446, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '446', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 405, 'http://backbone.test/?p=446', 9, 'nav_menu_item', '', 0),
(447, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '447', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 405, 'http://backbone.test/?p=447', 10, 'nav_menu_item', '', 0),
(448, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '448', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 358, 'http://backbone.test/?p=448', 11, 'nav_menu_item', '', 0),
(449, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '449', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 407, 'http://backbone.test/?p=449', 12, 'nav_menu_item', '', 0),
(450, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '450', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 407, 'http://backbone.test/?p=450', 13, 'nav_menu_item', '', 0),
(451, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '451', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 407, 'http://backbone.test/?p=451', 14, 'nav_menu_item', '', 0),
(452, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '452', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 358, 'http://backbone.test/?p=452', 15, 'nav_menu_item', '', 0),
(453, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '453', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 409, 'http://backbone.test/?p=453', 16, 'nav_menu_item', '', 0),
(454, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '454', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 409, 'http://backbone.test/?p=454', 17, 'nav_menu_item', '', 0),
(455, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '455', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 409, 'http://backbone.test/?p=455', 18, 'nav_menu_item', '', 0),
(456, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '456', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 358, 'http://backbone.test/?p=456', 19, 'nav_menu_item', '', 0),
(457, 1, '2019-09-15 21:39:04', '2019-09-15 21:39:04', ' ', '', '', 'publish', 'closed', 'closed', '', '457', '', '', '2019-09-15 21:39:04', '2019-09-15 21:39:04', '', 411, 'http://backbone.test/?p=457', 20, 'nav_menu_item', '', 0),
(458, 1, '2019-09-15 21:39:05', '2019-09-15 21:39:05', ' ', '', '', 'publish', 'closed', 'closed', '', '458', '', '', '2019-09-15 21:39:05', '2019-09-15 21:39:05', '', 411, 'http://backbone.test/?p=458', 21, 'nav_menu_item', '', 0),
(459, 1, '2019-09-15 21:39:05', '2019-09-15 21:39:05', ' ', '', '', 'publish', 'closed', 'closed', '', '459', '', '', '2019-09-15 21:39:05', '2019-09-15 21:39:05', '', 411, 'http://backbone.test/?p=459', 22, 'nav_menu_item', '', 0),
(461, 1, '2019-09-15 21:57:16', '2019-09-15 21:57:16', '', 'backbone', '', 'inherit', 'open', 'closed', '', 'backbone', '', '', '2019-09-15 21:57:16', '2019-09-15 21:57:16', '', 0, 'http://backbone.test/wp-content/uploads/backbone.svg', 0, 'attachment', 'image/svg+xml', 0),
(462, 1, '2019-09-15 21:57:40', '2019-09-15 21:57:40', '{\n    \"BackBone::custom_logo\": {\n        \"value\": 461,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 21:57:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e36dfcf-d1a2-43f7-80ef-bfb1ebee782b', '', '', '2019-09-15 21:57:40', '2019-09-15 21:57:40', '', 0, 'http://backbone.test/2019/09/15/6e36dfcf-d1a2-43f7-80ef-bfb1ebee782b/', 0, 'customize_changeset', '', 0);

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
(265, 2, 0),
(289, 1, 0),
(437, 2, 0),
(438, 2, 0),
(439, 2, 0),
(440, 2, 0),
(441, 2, 0),
(443, 2, 0),
(444, 2, 0),
(445, 2, 0),
(446, 2, 0),
(447, 2, 0),
(448, 2, 0),
(449, 2, 0),
(450, 2, 0),
(451, 2, 0),
(452, 2, 0),
(453, 2, 0),
(454, 2, 0),
(455, 2, 0),
(456, 2, 0),
(457, 2, 0),
(458, 2, 0),
(459, 2, 0);

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
(2, 2, 'nav_menu', '', 0, 23);

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
(16, 1, 'session_tokens', 'a:1:{s:64:\"002bb04a469e34a75806a716dadfda2c00b1f4086f91dc86f30abcb75c9ab207\";a:4:{s:10:\"expiration\";i:1592236188;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1591026588;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '75'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1549671369'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(27, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(28, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(29, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:18:\"dashboard_activity\";s:7:\"column4\";s:0:\"\";}');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2527;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

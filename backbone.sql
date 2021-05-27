# WordPress MySQL database migration
#
# Generated: Thursday 27. May 2021 15:16 UTC
# Hostname: 127.0.0.1:8889
# Database: `myenergybuddy`
# URL: //backbone.test
# Path: /Users/fluffy/GitHub/energybuddy
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, acfe-dbt, attachment, customize_changeset, nav_menu_item, page, post
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://backbone.test', 'yes'),
(2, 'home', 'https://backbone.test', 'yes'),
(3, 'blogname', 'Backbone', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'webdevelopers@versacreative.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:29:"acf-extended/acf-extended.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'BackBone', 'yes'),
(41, 'stylesheet', 'BackBone', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '49752', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'nonce_key', 'UM8J8uVxcC5tES1*X>^7S~qP(6e.z<|)48cgAoh{gSy+XIa~$e|<! a?K)IH!|+r', 'no'),
(109, 'nonce_salt', '_L_uW3;9gb{HZPO,qi0Yx7(L4:dLmC7QKe)8Kq`tQICt%OC97#4$$MK>H#3smUuS', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'cron', 'a:7:{i:1622129043;a:4:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1622130504;a:1:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1622160015;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1622162511;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1622172284;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1622562610;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549510822;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(117, 'auth_key', 'G5+-az2 [rO;]:qWem_q5Ne:>bq3*+NQ~[SK&j~OJ94{rK2^x1chrW9e6s6OaJ5k', 'no'),
(118, 'auth_salt', 'tgDvn}lsM^aI3hgo{g[(s+mte0eF/T9zZ1{.<}pQc2Hu65]H?#Q[`o$k^].R]p$?', 'no'),
(119, 'logged_in_key', '8S?aB]b:Za+ M]u#$:DG><.46C!`BUttX`xy_~~ZWOj)TgJ?=IU#smIKYeRdLB G', 'no'),
(120, 'logged_in_salt', 'exR|!tNQIo,o2H!ef-q2/s*J8!Qz>n.W9c{~Ix*Lq3}$x@47x|/7&}<A*>aj85y?', 'no'),
(147, 'WPLANG', '', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'current_theme', 'BackBone', 'yes'),
(157, 'theme_mods_BackBone', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:6:"menu-1";i:2;s:12:"primary-menu";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549510316;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:11:"custom_logo";i:516;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(169, 'category_children', 'a:0:{}', 'yes'),
(172, 'acf_version', '5.9.6', 'yes'),
(178, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TkRjeU1ESjhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRVdE1ERXRNRFVnTVRnNk5UUTZOVFk9IjtzOjM6InVybCI7czoyNDoiaHR0cHM6Ly9lbmVyZ3lidWRkeS50ZXN0Ijt9', 'yes'),
(192, 'cptui_new_install', 'false', 'yes'),
(213, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(248, 'options_footer_links_0_link_name', 'Contact', 'no'),
(249, '_options_footer_links_0_link_name', 'field_5c5e876437da0', 'no'),
(250, 'options_footer_links_0_link_url', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:30:"http://localhost:8888/contact/";s:6:"target";s:0:"";}', 'no'),
(251, '_options_footer_links_0_link_url', 'field_5c5e879037da1', 'no'),
(252, 'options_footer_links_0_link_target', 'null', 'no'),
(253, '_options_footer_links_0_link_target', 'field_5c5e87bc37da2', 'no'),
(254, 'options_footer_links_1_link_name', 'About ', 'no'),
(255, '_options_footer_links_1_link_name', 'field_5c5e876437da0', 'no'),
(256, 'options_footer_links_1_link_url', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:28:"http://localhost:8888/about/";s:6:"target";s:0:"";}', 'no'),
(257, '_options_footer_links_1_link_url', 'field_5c5e879037da1', 'no'),
(258, 'options_footer_links_1_link_target', 'null', 'no'),
(259, '_options_footer_links_1_link_target', 'field_5c5e87bc37da2', 'no'),
(260, 'options_footer_links_2_link_name', 'Services', 'no'),
(261, '_options_footer_links_2_link_name', 'field_5c5e876437da0', 'no'),
(262, 'options_footer_links_2_link_url', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:31:"http://localhost:8888/services/";s:6:"target";s:0:"";}', 'no'),
(263, '_options_footer_links_2_link_url', 'field_5c5e879037da1', 'no'),
(264, 'options_footer_links_2_link_target', 'null', 'no'),
(265, '_options_footer_links_2_link_target', 'field_5c5e87bc37da2', 'no'),
(266, 'options_footer_links_3_link_name', 'Home', 'no'),
(267, '_options_footer_links_3_link_name', 'field_5c5e876437da0', 'no'),
(268, 'options_footer_links_3_link_url', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:22:"http://localhost:8888/";s:6:"target";s:0:"";}', 'no'),
(269, '_options_footer_links_3_link_url', 'field_5c5e879037da1', 'no'),
(270, 'options_footer_links_3_link_target', 'null', 'no'),
(271, '_options_footer_links_3_link_target', 'field_5c5e87bc37da2', 'no'),
(272, 'options_footer_links_4_link_name', 'Privacy Policy', 'no'),
(273, '_options_footer_links_4_link_name', 'field_5c5e876437da0', 'no'),
(274, 'options_footer_links_4_link_url', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:15:"/privacy-policy";s:6:"target";s:0:"";}', 'no'),
(275, '_options_footer_links_4_link_url', 'field_5c5e879037da1', 'no'),
(276, 'options_footer_links_4_link_target', 'null', 'no'),
(277, '_options_footer_links_4_link_target', 'field_5c5e87bc37da2', 'no'),
(278, 'options_footer_links', '5', 'no'),
(279, '_options_footer_links', 'field_5c5e873737d9f', 'no'),
(310, 'db_upgraded', '', 'yes'),
(380, 'secure_auth_key', 'abF3 `U#|d~XVBA(YJmLXo{mC-{-k;eB}{BW/cia,0v0bwo%.MgKf(<gk*u/9*gw', 'no'),
(381, 'secure_auth_salt', 'wOvE)M+Kiq)/U_~9/g>I]}od*F-r !s6$hmh!ZOyRJO>/|,NdH|R1M_;7W!2v](M', 'no'),
(467, 'recovery_mode_email_last_sent', '1622121683', 'yes'),
(468, 'recovery_keys', 'a:1:{s:22:"rePUFoZT4Sea37Zt0ADPT3";a:2:{s:10:"hashed_key";s:34:"$P$BIVVnxyxbbourLOf.L7YGB6TDCEdX9/";s:10:"created_at";i:1622121683;}}', 'yes'),
(473, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(476, 'admin_email_lifespan', '1623365377', 'yes'),
(494, 'acfe', 'a:2:{s:7:"version";s:7:"0.8.8.3";s:7:"modules";a:5:{s:11:"block_types";a:1:{s:11:"page-header";a:16:{s:4:"name";s:11:"page-header";s:5:"title";s:11:"Page Header";s:11:"description";s:0:"";s:8:"category";s:6:"common";s:8:"keywords";a:0:{}s:10:"post_types";a:0:{}s:4:"mode";s:4:"auto";s:5:"align";s:0:"";s:13:"align_content";N;s:15:"render_template";s:22:"blocks/page-header.php";s:15:"render_callback";s:0:"";s:13:"enqueue_style";s:9:"style.css";s:14:"enqueue_script";s:0:"";s:14:"enqueue_assets";s:0:"";s:4:"icon";s:0:"";s:8:"supports";a:6:{s:5:"align";b:1;s:4:"mode";b:1;s:8:"multiple";b:1;s:3:"jsx";b:0;s:13:"align_content";b:0;s:6:"anchor";b:0;}}}s:13:"options_pages";a:0:{}s:10:"post_types";a:0:{}s:10:"taxonomies";a:0:{}s:8:"taxonomy";a:1:{s:6:"active";b:1;}}}', 'yes'),
(520, 'disallowed_keys', '', 'no'),
(521, 'comment_previously_approved', '1', 'yes'),
(522, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(523, 'auto_update_core_dev', 'enabled', 'yes'),
(524, 'auto_update_core_minor', 'enabled', 'yes'),
(525, 'auto_update_core_major', 'unset', 'yes'),
(526, 'finished_updating_comment_type', '1', 'yes'),
(528, 'can_compress_scripts', '0', 'no'),
(539, 'https_detection_errors', 'a:1:{s:23:"ssl_verification_failed";a:1:{i:0;s:24:"SSL verification failed.";}}', 'yes'),
(599, 'acf-field-group-category_children', 'a:0:{}', 'yes'),
(623, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1622128585;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3475 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(9, 2, '_edit_lock', '1622128526:1'),
(10, 2, '_edit_last', '1'),
(204, 2, 'banner_image', '1'),
(205, 2, '_banner_image', 'field_5c5e7677fd4f2'),
(206, 55, 'banner_image', '1'),
(207, 55, '_banner_image', 'field_5c5e7677fd4f2'),
(232, 62, 'banner_image', '1'),
(233, 62, '_banner_image', 'field_5c5e7677fd4f2'),
(1310, 265, '_menu_item_type', 'custom'),
(1311, 265, '_menu_item_menu_item_parent', '0'),
(1312, 265, '_menu_item_object_id', '265'),
(1313, 265, '_menu_item_object', 'custom'),
(1314, 265, '_menu_item_target', ''),
(1315, 265, '_menu_item_classes', 'a:1:{i:0;s:8:"cta-link";}'),
(1316, 265, '_menu_item_xfn', ''),
(1317, 265, '_menu_item_url', '#'),
(1441, 289, '_edit_lock', '1622121775:1'),
(1442, 289, '_edit_last', '1'),
(1461, 2, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
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
(1483, 346, 'sections', 'a:1:{i:0;s:11:"simple_card";}'),
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
(1511, 348, 'sections', 'a:1:{i:0;s:11:"cta_section";}'),
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
(1539, 349, 'sections', 'a:1:{i:0;s:11:"cta_section";}'),
(1540, 349, '_sections', 'field_5c928803440f2'),
(1541, 349, 'sections_0_background', 'color') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(2057, 2, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2058, 2, '_sections_0_content', 'field_5d63382a334d1'),
(2059, 2, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2060, 2, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2061, 392, 'banner_image', '1'),
(2062, 392, '_banner_image', 'field_5c5e7677fd4f2'),
(2063, 392, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
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
(2089, 392, 'sections_0_content', '<h1>Awesomeness!!!</h1>\r\n<strong> Lorem ipsum:</strong> dolor sit amet, consectetur adipisicing elit. Hic debitis<span style="text-decoration: underline;"> quis, omnis vero incidunt totam id quam est harum sint</span>. Officia beatae harum saepe assumenda unde, rerum, iure aperiam <strong>minus</strong>.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et rem, laborum nesciunt facilis praesentium sapiente in, voluptates repellat, neque distinctio quas vel. Velit recusandae magnam <em>quidem ex minus, dicta ipsum!</em>Lorem ipsum dolor sit amet, consectetur adipisicing elit<strong>. Dolor tempora,</strong> alias quibusdam neque temporibus error optio, tempore, quo officiis nemo delectus necessitatibus. Inventore dolor, molestias, ipsam dolore hic similique totam?'),
(2090, 392, '_sections_0_content', 'field_5d63382a334d1'),
(2091, 392, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2092, 392, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2101, 395, 'banner_image', '1'),
(2102, 395, '_banner_image', 'field_5c5e7677fd4f2'),
(2103, 395, 'sections', 'a:2:{i:0;s:7:"wysiwyg";i:1;s:7:"wysiwyg";}'),
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
(2129, 395, 'sections_0_content', '<h1>Awesomeness!!!</h1>\r\n<strong> Lorem ipsum:</strong> dolor sit amet, consectetur adipisicing elit. Hic debitis<span style="text-decoration: underline;"> quis, omnis vero incidunt totam id quam est harum sint</span>. Officia beatae harum saepe assumenda unde, rerum, iure aperiam <strong>minus</strong>.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et rem, laborum nesciunt facilis praesentium sapiente in, voluptates repellat, neque distinctio quas vel. Velit recusandae magnam <em>quidem ex minus, dicta ipsum!</em>Lorem ipsum dolor sit amet, consectetur adipisicing elit<strong>. Dolor tempora,</strong> alias quibusdam neque temporibus error optio, tempore, quo officiis nemo delectus necessitatibus. Inventore dolor, molestias, ipsam dolore hic similique totam?'),
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
(2141, 397, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(2167, 397, 'sections_0_content', '<h1>Awesomeness!!!</h1>\r\n<strong> Lorem ipsum:</strong> dolor sit amet, consectetur adipisicing elit. Hic debitis<span style="text-decoration: underline;"> quis, omnis vero incidunt totam id quam est harum sint</span>. Officia beatae harum saepe assumenda unde, rerum, iure aperiam <strong>minus</strong>.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et rem, laborum nesciunt facilis praesentium sapiente in, voluptates repellat, neque distinctio quas vel. Velit recusandae magnam <em>quidem ex minus, dicta ipsum!</em>Lorem ipsum dolor sit amet, consectetur adipisicing elit<strong>. Dolor tempora,</strong> alias quibusdam neque temporibus error optio, tempore, quo officiis nemo delectus necessitatibus. Inventore dolor, molestias, ipsam dolore hic similique totam?'),
(2168, 397, '_sections_0_content', 'field_5d63382a334d1'),
(2169, 397, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2170, 397, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2171, 400, 'banner_image', '1'),
(2172, 400, '_banner_image', 'field_5c5e7677fd4f2'),
(2173, 400, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
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
(2592, 465, '_wp_trash_meta_status', 'publish'),
(2593, 465, '_wp_trash_meta_time', '1622058394'),
(2594, 466, '_menu_item_type', 'custom'),
(2595, 466, '_menu_item_menu_item_parent', '0'),
(2596, 466, '_menu_item_object_id', '466'),
(2597, 466, '_menu_item_object', 'custom'),
(2598, 466, '_menu_item_target', ''),
(2599, 466, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2600, 466, '_menu_item_xfn', ''),
(2601, 466, '_menu_item_url', '#'),
(2603, 467, '_menu_item_type', 'custom'),
(2604, 467, '_menu_item_menu_item_parent', '0'),
(2605, 467, '_menu_item_object_id', '467'),
(2606, 467, '_menu_item_object', 'custom'),
(2607, 467, '_menu_item_target', ''),
(2608, 467, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2609, 467, '_menu_item_xfn', ''),
(2610, 467, '_menu_item_url', '#'),
(2612, 468, '_menu_item_type', 'custom'),
(2613, 468, '_menu_item_menu_item_parent', '0'),
(2614, 468, '_menu_item_object_id', '468'),
(2615, 468, '_menu_item_object', 'custom'),
(2616, 468, '_menu_item_target', ''),
(2617, 468, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2618, 468, '_menu_item_xfn', ''),
(2619, 468, '_menu_item_url', '#'),
(2621, 469, '_menu_item_type', 'custom'),
(2622, 469, '_menu_item_menu_item_parent', '0'),
(2623, 469, '_menu_item_object_id', '469'),
(2624, 469, '_menu_item_object', 'custom'),
(2625, 469, '_menu_item_target', ''),
(2626, 469, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2627, 469, '_menu_item_xfn', ''),
(2628, 469, '_menu_item_url', '#'),
(2630, 470, '_menu_item_type', 'custom'),
(2631, 470, '_menu_item_menu_item_parent', '0'),
(2632, 470, '_menu_item_object_id', '470'),
(2633, 470, '_menu_item_object', 'custom'),
(2634, 470, '_menu_item_target', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2635, 470, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2636, 470, '_menu_item_xfn', ''),
(2637, 470, '_menu_item_url', '#'),
(2649, 265, '_wp_old_date', '2019-04-26'),
(2650, 473, '_edit_last', '1'),
(2651, 473, 'name', 'blocks'),
(2652, 473, '_name', 'field_acfe_dbt_name'),
(2653, 473, 'description', ''),
(2654, 473, '_description', 'field_acfe_dbt_description'),
(2655, 473, 'category', 'common'),
(2656, 473, '_category', 'field_acfe_dbt_category'),
(2657, 473, 'keywords', ''),
(2658, 473, '_keywords', 'field_acfe_dbt_keywords'),
(2659, 473, 'post_types', 'a:1:{i:0;s:4:"page";}'),
(2660, 473, '_post_types', 'field_acfe_dbt_post_types'),
(2661, 473, 'mode', 'preview'),
(2662, 473, '_mode', 'field_acfe_dbt_mode'),
(2663, 473, 'align', 'none'),
(2664, 473, '_align', 'field_acfe_dbt_align'),
(2665, 473, 'icon_type', 'simple'),
(2666, 473, '_icon_type', 'field_acfe_dbt_icon_type'),
(2667, 473, 'icon_text', ''),
(2668, 473, '_icon_text', 'field_acfe_dbt_icon_text'),
(2669, 473, 'render_template', ''),
(2670, 473, '_render_template', 'field_acfe_dbt_render_template'),
(2671, 473, 'render_callback', ''),
(2672, 473, '_render_callback', 'field_acfe_dbt_render_callback'),
(2673, 473, 'enqueue_style', ''),
(2674, 473, '_enqueue_style', 'field_acfe_dbt_enqueue_style'),
(2675, 473, 'enqueue_script', ''),
(2676, 473, '_enqueue_script', 'field_acfe_dbt_enqueue_script'),
(2677, 473, 'enqueue_assets', ''),
(2678, 473, '_enqueue_assets', 'field_acfe_dbt_enqueue_assets'),
(2679, 473, 'supports_align', '1'),
(2680, 473, '_supports_align', 'field_acfe_dbt_supports_align'),
(2681, 473, 'supports_align_args', ''),
(2682, 473, '_supports_align_args', 'field_acfe_dbt_supports_align_args'),
(2683, 473, 'supports_anchor', '0'),
(2684, 473, '_supports_anchor', 'field_acfe_dbt_supports_anchor'),
(2685, 473, 'supports_experimental_jsx', '0'),
(2686, 473, '_supports_experimental_jsx', 'field_acfe_dbt_supports_experimental_jsx'),
(2687, 473, 'supports_align_content', '0'),
(2688, 473, '_supports_align_content', 'field_acfe_dbt_supports_align_content'),
(2689, 473, 'supports_mode', '1'),
(2690, 473, '_supports_mode', 'field_acfe_dbt_supports_mode'),
(2691, 473, 'supports_multiple', '1'),
(2692, 473, '_supports_multiple', 'field_acfe_dbt_supports_multiple'),
(2693, 473, '_wp_old_slug', 'section-blocks'),
(2694, 473, '_edit_lock', '1622121990:1'),
(2695, 289, '_wp_trash_meta_status', 'publish'),
(2696, 289, '_wp_trash_meta_time', '1622121930'),
(2697, 289, '_wp_desired_post_slug', 'group_5c9287fec593e'),
(2698, 290, '_wp_trash_meta_status', 'publish'),
(2699, 290, '_wp_trash_meta_time', '1622121930'),
(2700, 290, '_wp_desired_post_slug', 'field_5c928803440f2'),
(2733, 475, '_edit_last', '1'),
(2734, 475, '_edit_lock', '1622122488:1'),
(2735, 473, '_wp_trash_meta_status', 'publish'),
(2736, 473, '_wp_trash_meta_time', '1622122652'),
(2737, 473, '_wp_desired_post_slug', 'blocks'),
(2738, 476, '_edit_last', '1'),
(2739, 476, 'name', 'page-header'),
(2740, 476, '_name', 'field_acfe_dbt_name'),
(2741, 476, 'description', ''),
(2742, 476, '_description', 'field_acfe_dbt_description'),
(2743, 476, 'category', 'common'),
(2744, 476, '_category', 'field_acfe_dbt_category'),
(2745, 476, 'keywords', ''),
(2746, 476, '_keywords', 'field_acfe_dbt_keywords'),
(2747, 476, 'post_types', ''),
(2748, 476, '_post_types', 'field_acfe_dbt_post_types'),
(2749, 476, 'mode', 'auto'),
(2750, 476, '_mode', 'field_acfe_dbt_mode'),
(2751, 476, 'align', 'none'),
(2752, 476, '_align', 'field_acfe_dbt_align'),
(2753, 476, 'icon_type', 'simple'),
(2754, 476, '_icon_type', 'field_acfe_dbt_icon_type'),
(2755, 476, 'icon_text', ''),
(2756, 476, '_icon_text', 'field_acfe_dbt_icon_text'),
(2757, 476, 'render_template', 'blocks/page-header.php'),
(2758, 476, '_render_template', 'field_acfe_dbt_render_template'),
(2759, 476, 'render_callback', ''),
(2760, 476, '_render_callback', 'field_acfe_dbt_render_callback'),
(2761, 476, 'enqueue_style', 'style.css'),
(2762, 476, '_enqueue_style', 'field_acfe_dbt_enqueue_style'),
(2763, 476, 'enqueue_script', ''),
(2764, 476, '_enqueue_script', 'field_acfe_dbt_enqueue_script'),
(2765, 476, 'enqueue_assets', ''),
(2766, 476, '_enqueue_assets', 'field_acfe_dbt_enqueue_assets'),
(2767, 476, 'supports_align', '1'),
(2768, 476, '_supports_align', 'field_acfe_dbt_supports_align'),
(2769, 476, 'supports_align_args', ''),
(2770, 476, '_supports_align_args', 'field_acfe_dbt_supports_align_args'),
(2771, 476, 'supports_anchor', '0'),
(2772, 476, '_supports_anchor', 'field_acfe_dbt_supports_anchor'),
(2773, 476, 'supports_experimental_jsx', '0'),
(2774, 476, '_supports_experimental_jsx', 'field_acfe_dbt_supports_experimental_jsx'),
(2775, 476, 'supports_align_content', '0'),
(2776, 476, '_supports_align_content', 'field_acfe_dbt_supports_align_content'),
(2777, 476, 'supports_mode', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2778, 476, '_supports_mode', 'field_acfe_dbt_supports_mode'),
(2779, 476, 'supports_multiple', '1'),
(2780, 476, '_supports_multiple', 'field_acfe_dbt_supports_multiple'),
(2781, 476, '_edit_lock', '1622128410:1'),
(2782, 475, '_wp_trash_meta_status', 'publish'),
(2783, 475, '_wp_trash_meta_time', '1622122749'),
(2784, 475, '_wp_desired_post_slug', 'group_60af9e99d70c3'),
(2785, 478, 'banner_image', '1'),
(2786, 478, '_banner_image', 'field_5c5e7677fd4f2'),
(2787, 478, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(2788, 478, '_sections', 'field_5c928803440f2'),
(2789, 478, 'sections_0_background', 'color'),
(2790, 478, '_sections_0_background', 'field_5c93be37769e9'),
(2791, 478, 'sections_0_bg_color', 'u_bg_white'),
(2792, 478, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2793, 478, 'sections_0_has_media', '--no-image'),
(2794, 478, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2795, 478, 'sections_0_image', ''),
(2796, 478, '_sections_0_image', 'field_5c9a8db975838'),
(2797, 478, 'sections_0_align_media', '--to-left'),
(2798, 478, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2799, 478, 'sections_0_heading', ''),
(2800, 478, '_sections_0_heading', 'field_5c9a8e1675839'),
(2801, 478, 'sections_0_sub-heading', ''),
(2802, 478, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2803, 478, 'sections_0_intro_section', ''),
(2804, 478, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2805, 478, 'sections_0_visibility', '1'),
(2806, 478, '_sections_0_visibility', 'field_5cc868a43f331'),
(2807, 478, 'sections_0_has_cta', '0'),
(2808, 478, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2809, 478, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2810, 478, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2811, 478, 'sections_0_align_content', '--align_left'),
(2812, 478, '_sections_0_align_content', 'field_5c9a918453638'),
(2813, 478, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2814, 478, '_sections_0_content', 'field_5d63382a334d1'),
(2815, 478, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2816, 478, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2817, 477, '_edit_last', '1'),
(2818, 477, '_edit_lock', '1622127253:1'),
(2819, 481, 'banner_image', '1'),
(2820, 481, '_banner_image', 'field_5c5e7677fd4f2'),
(2821, 481, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(2822, 481, '_sections', 'field_5c928803440f2'),
(2823, 481, 'sections_0_background', 'color'),
(2824, 481, '_sections_0_background', 'field_5c93be37769e9'),
(2825, 481, 'sections_0_bg_color', 'u_bg_white'),
(2826, 481, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2827, 481, 'sections_0_has_media', '--no-image'),
(2828, 481, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2829, 481, 'sections_0_image', ''),
(2830, 481, '_sections_0_image', 'field_5c9a8db975838'),
(2831, 481, 'sections_0_align_media', '--to-left'),
(2832, 481, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2833, 481, 'sections_0_heading', ''),
(2834, 481, '_sections_0_heading', 'field_5c9a8e1675839'),
(2835, 481, 'sections_0_sub-heading', ''),
(2836, 481, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2837, 481, 'sections_0_intro_section', ''),
(2838, 481, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2839, 481, 'sections_0_visibility', '1'),
(2840, 481, '_sections_0_visibility', 'field_5cc868a43f331'),
(2841, 481, 'sections_0_has_cta', '0'),
(2842, 481, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2843, 481, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2844, 481, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2845, 481, 'sections_0_align_content', '--align_left'),
(2846, 481, '_sections_0_align_content', 'field_5c9a918453638'),
(2847, 481, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2848, 481, '_sections_0_content', 'field_5d63382a334d1'),
(2849, 481, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2850, 481, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2851, 484, 'banner_image', '1'),
(2852, 484, '_banner_image', 'field_5c5e7677fd4f2'),
(2853, 484, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(2854, 484, '_sections', 'field_5c928803440f2'),
(2855, 484, 'sections_0_background', 'color'),
(2856, 484, '_sections_0_background', 'field_5c93be37769e9'),
(2857, 484, 'sections_0_bg_color', 'u_bg_white'),
(2858, 484, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2859, 484, 'sections_0_has_media', '--no-image'),
(2860, 484, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2861, 484, 'sections_0_image', ''),
(2862, 484, '_sections_0_image', 'field_5c9a8db975838'),
(2863, 484, 'sections_0_align_media', '--to-left'),
(2864, 484, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2865, 484, 'sections_0_heading', ''),
(2866, 484, '_sections_0_heading', 'field_5c9a8e1675839'),
(2867, 484, 'sections_0_sub-heading', ''),
(2868, 484, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2869, 484, 'sections_0_intro_section', ''),
(2870, 484, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2871, 484, 'sections_0_visibility', '1'),
(2872, 484, '_sections_0_visibility', 'field_5cc868a43f331'),
(2873, 484, 'sections_0_has_cta', '0'),
(2874, 484, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2875, 484, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2876, 484, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2877, 484, 'sections_0_align_content', '--align_left') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2878, 484, '_sections_0_align_content', 'field_5c9a918453638'),
(2879, 484, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2880, 484, '_sections_0_content', 'field_5d63382a334d1'),
(2881, 484, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2882, 484, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2883, 487, 'banner_image', '1'),
(2884, 487, '_banner_image', 'field_5c5e7677fd4f2'),
(2885, 487, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(2886, 487, '_sections', 'field_5c928803440f2'),
(2887, 487, 'sections_0_background', 'color'),
(2888, 487, '_sections_0_background', 'field_5c93be37769e9'),
(2889, 487, 'sections_0_bg_color', 'u_bg_white'),
(2890, 487, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2891, 487, 'sections_0_has_media', '--no-image'),
(2892, 487, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2893, 487, 'sections_0_image', ''),
(2894, 487, '_sections_0_image', 'field_5c9a8db975838'),
(2895, 487, 'sections_0_align_media', '--to-left'),
(2896, 487, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2897, 487, 'sections_0_heading', ''),
(2898, 487, '_sections_0_heading', 'field_5c9a8e1675839'),
(2899, 487, 'sections_0_sub-heading', ''),
(2900, 487, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2901, 487, 'sections_0_intro_section', ''),
(2902, 487, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2903, 487, 'sections_0_visibility', '1'),
(2904, 487, '_sections_0_visibility', 'field_5cc868a43f331'),
(2905, 487, 'sections_0_has_cta', '0'),
(2906, 487, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2907, 487, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2908, 487, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2909, 487, 'sections_0_align_content', '--align_left'),
(2910, 487, '_sections_0_align_content', 'field_5c9a918453638'),
(2911, 487, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2912, 487, '_sections_0_content', 'field_5d63382a334d1'),
(2913, 487, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2914, 487, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2915, 489, 'banner_image', '1'),
(2916, 489, '_banner_image', 'field_5c5e7677fd4f2'),
(2917, 489, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(2918, 489, '_sections', 'field_5c928803440f2'),
(2919, 489, 'sections_0_background', 'color'),
(2920, 489, '_sections_0_background', 'field_5c93be37769e9'),
(2921, 489, 'sections_0_bg_color', 'u_bg_white'),
(2922, 489, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2923, 489, 'sections_0_has_media', '--no-image'),
(2924, 489, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2925, 489, 'sections_0_image', ''),
(2926, 489, '_sections_0_image', 'field_5c9a8db975838'),
(2927, 489, 'sections_0_align_media', '--to-left'),
(2928, 489, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2929, 489, 'sections_0_heading', ''),
(2930, 489, '_sections_0_heading', 'field_5c9a8e1675839'),
(2931, 489, 'sections_0_sub-heading', ''),
(2932, 489, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2933, 489, 'sections_0_intro_section', ''),
(2934, 489, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2935, 489, 'sections_0_visibility', '1'),
(2936, 489, '_sections_0_visibility', 'field_5cc868a43f331'),
(2937, 489, 'sections_0_has_cta', '0'),
(2938, 489, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2939, 489, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2940, 489, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2941, 489, 'sections_0_align_content', '--align_left'),
(2942, 489, '_sections_0_align_content', 'field_5c9a918453638'),
(2943, 489, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2944, 489, '_sections_0_content', 'field_5d63382a334d1'),
(2945, 489, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(2946, 489, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2947, 490, 'banner_image', '1'),
(2948, 490, '_banner_image', 'field_5c5e7677fd4f2'),
(2949, 490, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(2950, 490, '_sections', 'field_5c928803440f2'),
(2951, 490, 'sections_0_background', 'color'),
(2952, 490, '_sections_0_background', 'field_5c93be37769e9'),
(2953, 490, 'sections_0_bg_color', 'u_bg_white'),
(2954, 490, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2955, 490, 'sections_0_has_media', '--no-image'),
(2956, 490, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2957, 490, 'sections_0_image', ''),
(2958, 490, '_sections_0_image', 'field_5c9a8db975838'),
(2959, 490, 'sections_0_align_media', '--to-left'),
(2960, 490, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2961, 490, 'sections_0_heading', ''),
(2962, 490, '_sections_0_heading', 'field_5c9a8e1675839'),
(2963, 490, 'sections_0_sub-heading', ''),
(2964, 490, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2965, 490, 'sections_0_intro_section', ''),
(2966, 490, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2967, 490, 'sections_0_visibility', '1'),
(2968, 490, '_sections_0_visibility', 'field_5cc868a43f331'),
(2969, 490, 'sections_0_has_cta', '0'),
(2970, 490, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(2971, 490, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(2972, 490, '_sections_0_column_size', 'field_5c93bef6769ec'),
(2973, 490, 'sections_0_align_content', '--align_left'),
(2974, 490, '_sections_0_align_content', 'field_5c9a918453638'),
(2975, 490, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(2976, 490, '_sections_0_content', 'field_5d63382a334d1'),
(2977, 490, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2978, 490, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(2979, 492, 'banner_image', '1'),
(2980, 492, '_banner_image', 'field_5c5e7677fd4f2'),
(2981, 492, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(2982, 492, '_sections', 'field_5c928803440f2'),
(2983, 492, 'sections_0_background', 'color'),
(2984, 492, '_sections_0_background', 'field_5c93be37769e9'),
(2985, 492, 'sections_0_bg_color', 'u_bg_white'),
(2986, 492, '_sections_0_bg_color', 'field_5c93be82769ea'),
(2987, 492, 'sections_0_has_media', '--no-image'),
(2988, 492, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(2989, 492, 'sections_0_image', ''),
(2990, 492, '_sections_0_image', 'field_5c9a8db975838'),
(2991, 492, 'sections_0_align_media', '--to-left'),
(2992, 492, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(2993, 492, 'sections_0_heading', ''),
(2994, 492, '_sections_0_heading', 'field_5c9a8e1675839'),
(2995, 492, 'sections_0_sub-heading', ''),
(2996, 492, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(2997, 492, 'sections_0_intro_section', ''),
(2998, 492, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(2999, 492, 'sections_0_visibility', '1'),
(3000, 492, '_sections_0_visibility', 'field_5cc868a43f331'),
(3001, 492, 'sections_0_has_cta', '0'),
(3002, 492, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3003, 492, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3004, 492, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3005, 492, 'sections_0_align_content', '--align_left'),
(3006, 492, '_sections_0_align_content', 'field_5c9a918453638'),
(3007, 492, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3008, 492, '_sections_0_content', 'field_5d63382a334d1'),
(3009, 492, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3010, 492, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3011, 494, 'banner_image', '1'),
(3012, 494, '_banner_image', 'field_5c5e7677fd4f2'),
(3013, 494, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3014, 494, '_sections', 'field_5c928803440f2'),
(3015, 494, 'sections_0_background', 'color'),
(3016, 494, '_sections_0_background', 'field_5c93be37769e9'),
(3017, 494, 'sections_0_bg_color', 'u_bg_white'),
(3018, 494, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3019, 494, 'sections_0_has_media', '--no-image'),
(3020, 494, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3021, 494, 'sections_0_image', ''),
(3022, 494, '_sections_0_image', 'field_5c9a8db975838'),
(3023, 494, 'sections_0_align_media', '--to-left'),
(3024, 494, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3025, 494, 'sections_0_heading', ''),
(3026, 494, '_sections_0_heading', 'field_5c9a8e1675839'),
(3027, 494, 'sections_0_sub-heading', ''),
(3028, 494, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3029, 494, 'sections_0_intro_section', ''),
(3030, 494, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3031, 494, 'sections_0_visibility', '1'),
(3032, 494, '_sections_0_visibility', 'field_5cc868a43f331'),
(3033, 494, 'sections_0_has_cta', '0'),
(3034, 494, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3035, 494, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3036, 494, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3037, 494, 'sections_0_align_content', '--align_left'),
(3038, 494, '_sections_0_align_content', 'field_5c9a918453638'),
(3039, 494, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3040, 494, '_sections_0_content', 'field_5d63382a334d1'),
(3041, 494, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3042, 494, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3045, 500, 'banner_image', '1'),
(3046, 500, '_banner_image', 'field_5c5e7677fd4f2'),
(3047, 500, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3048, 500, '_sections', 'field_5c928803440f2'),
(3049, 500, 'sections_0_background', 'color'),
(3050, 500, '_sections_0_background', 'field_5c93be37769e9'),
(3051, 500, 'sections_0_bg_color', 'u_bg_white'),
(3052, 500, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3053, 500, 'sections_0_has_media', '--no-image'),
(3054, 500, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3055, 500, 'sections_0_image', ''),
(3056, 500, '_sections_0_image', 'field_5c9a8db975838'),
(3057, 500, 'sections_0_align_media', '--to-left'),
(3058, 500, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3059, 500, 'sections_0_heading', ''),
(3060, 500, '_sections_0_heading', 'field_5c9a8e1675839'),
(3061, 500, 'sections_0_sub-heading', ''),
(3062, 500, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3063, 500, 'sections_0_intro_section', ''),
(3064, 500, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3065, 500, 'sections_0_visibility', '1'),
(3066, 500, '_sections_0_visibility', 'field_5cc868a43f331'),
(3067, 500, 'sections_0_has_cta', '0'),
(3068, 500, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3069, 500, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3070, 500, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3071, 500, 'sections_0_align_content', '--align_left'),
(3072, 500, '_sections_0_align_content', 'field_5c9a918453638'),
(3073, 500, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3074, 500, '_sections_0_content', 'field_5d63382a334d1'),
(3075, 500, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3076, 500, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3077, 502, 'banner_image', '1'),
(3078, 502, '_banner_image', 'field_5c5e7677fd4f2'),
(3079, 502, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3080, 502, '_sections', 'field_5c928803440f2'),
(3081, 502, 'sections_0_background', 'color'),
(3082, 502, '_sections_0_background', 'field_5c93be37769e9'),
(3083, 502, 'sections_0_bg_color', 'u_bg_white'),
(3084, 502, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3085, 502, 'sections_0_has_media', '--no-image'),
(3086, 502, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3087, 502, 'sections_0_image', ''),
(3088, 502, '_sections_0_image', 'field_5c9a8db975838'),
(3089, 502, 'sections_0_align_media', '--to-left'),
(3090, 502, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3091, 502, 'sections_0_heading', ''),
(3092, 502, '_sections_0_heading', 'field_5c9a8e1675839'),
(3093, 502, 'sections_0_sub-heading', ''),
(3094, 502, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3095, 502, 'sections_0_intro_section', ''),
(3096, 502, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3097, 502, 'sections_0_visibility', '1'),
(3098, 502, '_sections_0_visibility', 'field_5cc868a43f331'),
(3099, 502, 'sections_0_has_cta', '0'),
(3100, 502, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3101, 502, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3102, 502, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3103, 502, 'sections_0_align_content', '--align_left'),
(3104, 502, '_sections_0_align_content', 'field_5c9a918453638'),
(3105, 502, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3106, 502, '_sections_0_content', 'field_5d63382a334d1'),
(3107, 502, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3108, 502, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3109, 504, 'banner_image', '1'),
(3110, 504, '_banner_image', 'field_5c5e7677fd4f2'),
(3111, 504, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3112, 504, '_sections', 'field_5c928803440f2'),
(3113, 504, 'sections_0_background', 'color'),
(3114, 504, '_sections_0_background', 'field_5c93be37769e9'),
(3115, 504, 'sections_0_bg_color', 'u_bg_white'),
(3116, 504, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3117, 504, 'sections_0_has_media', '--no-image'),
(3118, 504, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3119, 504, 'sections_0_image', ''),
(3120, 504, '_sections_0_image', 'field_5c9a8db975838'),
(3121, 504, 'sections_0_align_media', '--to-left'),
(3122, 504, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3123, 504, 'sections_0_heading', ''),
(3124, 504, '_sections_0_heading', 'field_5c9a8e1675839'),
(3125, 504, 'sections_0_sub-heading', ''),
(3126, 504, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3127, 504, 'sections_0_intro_section', ''),
(3128, 504, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3129, 504, 'sections_0_visibility', '1'),
(3130, 504, '_sections_0_visibility', 'field_5cc868a43f331'),
(3131, 504, 'sections_0_has_cta', '0'),
(3132, 504, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3133, 504, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3134, 504, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3135, 504, 'sections_0_align_content', '--align_left'),
(3136, 504, '_sections_0_align_content', 'field_5c9a918453638'),
(3137, 504, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3138, 504, '_sections_0_content', 'field_5d63382a334d1'),
(3139, 504, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3140, 504, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3141, 506, 'banner_image', '1'),
(3142, 506, '_banner_image', 'field_5c5e7677fd4f2'),
(3143, 506, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3144, 506, '_sections', 'field_5c928803440f2'),
(3145, 506, 'sections_0_background', 'color'),
(3146, 506, '_sections_0_background', 'field_5c93be37769e9'),
(3147, 506, 'sections_0_bg_color', 'u_bg_white'),
(3148, 506, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3149, 506, 'sections_0_has_media', '--no-image'),
(3150, 506, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3151, 506, 'sections_0_image', ''),
(3152, 506, '_sections_0_image', 'field_5c9a8db975838'),
(3153, 506, 'sections_0_align_media', '--to-left'),
(3154, 506, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3155, 506, 'sections_0_heading', ''),
(3156, 506, '_sections_0_heading', 'field_5c9a8e1675839'),
(3157, 506, 'sections_0_sub-heading', ''),
(3158, 506, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3159, 506, 'sections_0_intro_section', ''),
(3160, 506, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3161, 506, 'sections_0_visibility', '1'),
(3162, 506, '_sections_0_visibility', 'field_5cc868a43f331'),
(3163, 506, 'sections_0_has_cta', '0'),
(3164, 506, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3165, 506, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3166, 506, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3167, 506, 'sections_0_align_content', '--align_left'),
(3168, 506, '_sections_0_align_content', 'field_5c9a918453638'),
(3169, 506, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3170, 506, '_sections_0_content', 'field_5d63382a334d1'),
(3171, 506, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3172, 506, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3173, 507, 'banner_image', '1'),
(3174, 507, '_banner_image', 'field_5c5e7677fd4f2'),
(3175, 507, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3176, 507, '_sections', 'field_5c928803440f2'),
(3177, 507, 'sections_0_background', 'color'),
(3178, 507, '_sections_0_background', 'field_5c93be37769e9'),
(3179, 507, 'sections_0_bg_color', 'u_bg_white') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3180, 507, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3181, 507, 'sections_0_has_media', '--no-image'),
(3182, 507, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3183, 507, 'sections_0_image', ''),
(3184, 507, '_sections_0_image', 'field_5c9a8db975838'),
(3185, 507, 'sections_0_align_media', '--to-left'),
(3186, 507, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3187, 507, 'sections_0_heading', ''),
(3188, 507, '_sections_0_heading', 'field_5c9a8e1675839'),
(3189, 507, 'sections_0_sub-heading', ''),
(3190, 507, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3191, 507, 'sections_0_intro_section', ''),
(3192, 507, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3193, 507, 'sections_0_visibility', '1'),
(3194, 507, '_sections_0_visibility', 'field_5cc868a43f331'),
(3195, 507, 'sections_0_has_cta', '0'),
(3196, 507, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3197, 507, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3198, 507, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3199, 507, 'sections_0_align_content', '--align_left'),
(3200, 507, '_sections_0_align_content', 'field_5c9a918453638'),
(3201, 507, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3202, 507, '_sections_0_content', 'field_5d63382a334d1'),
(3203, 507, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3204, 507, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3207, 510, 'banner_image', '1'),
(3208, 510, '_banner_image', 'field_5c5e7677fd4f2'),
(3209, 510, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3210, 510, '_sections', 'field_5c928803440f2'),
(3211, 510, 'sections_0_background', 'color'),
(3212, 510, '_sections_0_background', 'field_5c93be37769e9'),
(3213, 510, 'sections_0_bg_color', 'u_bg_white'),
(3214, 510, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3215, 510, 'sections_0_has_media', '--no-image'),
(3216, 510, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3217, 510, 'sections_0_image', ''),
(3218, 510, '_sections_0_image', 'field_5c9a8db975838'),
(3219, 510, 'sections_0_align_media', '--to-left'),
(3220, 510, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3221, 510, 'sections_0_heading', ''),
(3222, 510, '_sections_0_heading', 'field_5c9a8e1675839'),
(3223, 510, 'sections_0_sub-heading', ''),
(3224, 510, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3225, 510, 'sections_0_intro_section', ''),
(3226, 510, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3227, 510, 'sections_0_visibility', '1'),
(3228, 510, '_sections_0_visibility', 'field_5cc868a43f331'),
(3229, 510, 'sections_0_has_cta', '0'),
(3230, 510, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3231, 510, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3232, 510, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3233, 510, 'sections_0_align_content', '--align_left'),
(3234, 510, '_sections_0_align_content', 'field_5c9a918453638'),
(3235, 510, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3236, 510, '_sections_0_content', 'field_5d63382a334d1'),
(3237, 510, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3238, 510, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3239, 511, '_wp_attached_file', 'lovers-scaled.jpg'),
(3240, 511, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1260;s:4:"file";s:17:"lovers-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"lovers-450x222.jpg";s:5:"width";i:450;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"lovers-992x488.jpg";s:5:"width";i:992;s:6:"height";i:488;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"lovers-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"lovers-768x378.jpg";s:5:"width";i:768;s:6:"height";i:378;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:19:"lovers-1536x756.jpg";s:5:"width";i:1536;s:6:"height";i:756;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"lovers-2048x1008.jpg";s:5:"width";i:2048;s:6:"height";i:1008;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:10:"lovers.jpg";}'),
(3241, 513, 'banner_image', '1'),
(3242, 513, '_banner_image', 'field_5c5e7677fd4f2'),
(3243, 513, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3244, 513, '_sections', 'field_5c928803440f2'),
(3245, 513, 'sections_0_background', 'color'),
(3246, 513, '_sections_0_background', 'field_5c93be37769e9'),
(3247, 513, 'sections_0_bg_color', 'u_bg_white'),
(3248, 513, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3249, 513, 'sections_0_has_media', '--no-image'),
(3250, 513, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3251, 513, 'sections_0_image', ''),
(3252, 513, '_sections_0_image', 'field_5c9a8db975838'),
(3253, 513, 'sections_0_align_media', '--to-left'),
(3254, 513, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3255, 513, 'sections_0_heading', ''),
(3256, 513, '_sections_0_heading', 'field_5c9a8e1675839'),
(3257, 513, 'sections_0_sub-heading', ''),
(3258, 513, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3259, 513, 'sections_0_intro_section', ''),
(3260, 513, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3261, 513, 'sections_0_visibility', '1'),
(3262, 513, '_sections_0_visibility', 'field_5cc868a43f331'),
(3263, 513, 'sections_0_has_cta', '0'),
(3264, 513, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3265, 513, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3266, 513, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3267, 513, 'sections_0_align_content', '--align_left'),
(3268, 513, '_sections_0_align_content', 'field_5c9a918453638'),
(3269, 513, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3270, 513, '_sections_0_content', 'field_5d63382a334d1'),
(3271, 513, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3272, 513, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3273, 515, 'banner_image', '1'),
(3274, 515, '_banner_image', 'field_5c5e7677fd4f2'),
(3275, 515, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3276, 515, '_sections', 'field_5c928803440f2'),
(3277, 515, 'sections_0_background', 'color'),
(3278, 515, '_sections_0_background', 'field_5c93be37769e9'),
(3279, 515, 'sections_0_bg_color', 'u_bg_white'),
(3280, 515, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3281, 515, 'sections_0_has_media', '--no-image') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3282, 515, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3283, 515, 'sections_0_image', ''),
(3284, 515, '_sections_0_image', 'field_5c9a8db975838'),
(3285, 515, 'sections_0_align_media', '--to-left'),
(3286, 515, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3287, 515, 'sections_0_heading', ''),
(3288, 515, '_sections_0_heading', 'field_5c9a8e1675839'),
(3289, 515, 'sections_0_sub-heading', ''),
(3290, 515, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3291, 515, 'sections_0_intro_section', ''),
(3292, 515, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3293, 515, 'sections_0_visibility', '1'),
(3294, 515, '_sections_0_visibility', 'field_5cc868a43f331'),
(3295, 515, 'sections_0_has_cta', '0'),
(3296, 515, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3297, 515, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3298, 515, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3299, 515, 'sections_0_align_content', '--align_left'),
(3300, 515, '_sections_0_align_content', 'field_5c9a918453638'),
(3301, 515, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3302, 515, '_sections_0_content', 'field_5d63382a334d1'),
(3303, 515, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3304, 515, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3305, 516, '_wp_attached_file', 'logo.png'),
(3306, 516, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:8:"logo.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"logo-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(3307, 517, '_wp_trash_meta_status', 'publish'),
(3308, 517, '_wp_trash_meta_time', '1622127373'),
(3309, 466, '_wp_old_date', '2021-05-26'),
(3310, 467, '_wp_old_date', '2021-05-26'),
(3311, 468, '_wp_old_date', '2021-05-26'),
(3312, 469, '_wp_old_date', '2021-05-26'),
(3313, 470, '_wp_old_date', '2021-05-26'),
(3314, 265, '_wp_old_date', '2021-05-26'),
(3315, 518, 'banner_image', '1'),
(3316, 518, '_banner_image', 'field_5c5e7677fd4f2'),
(3317, 518, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3318, 518, '_sections', 'field_5c928803440f2'),
(3319, 518, 'sections_0_background', 'color'),
(3320, 518, '_sections_0_background', 'field_5c93be37769e9'),
(3321, 518, 'sections_0_bg_color', 'u_bg_white'),
(3322, 518, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3323, 518, 'sections_0_has_media', '--no-image'),
(3324, 518, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3325, 518, 'sections_0_image', ''),
(3326, 518, '_sections_0_image', 'field_5c9a8db975838'),
(3327, 518, 'sections_0_align_media', '--to-left'),
(3328, 518, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3329, 518, 'sections_0_heading', ''),
(3330, 518, '_sections_0_heading', 'field_5c9a8e1675839'),
(3331, 518, 'sections_0_sub-heading', ''),
(3332, 518, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3333, 518, 'sections_0_intro_section', ''),
(3334, 518, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3335, 518, 'sections_0_visibility', '1'),
(3336, 518, '_sections_0_visibility', 'field_5cc868a43f331'),
(3337, 518, 'sections_0_has_cta', '0'),
(3338, 518, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3339, 518, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3340, 518, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3341, 518, 'sections_0_align_content', '--align_left'),
(3342, 518, '_sections_0_align_content', 'field_5c9a918453638'),
(3343, 518, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3344, 518, '_sections_0_content', 'field_5d63382a334d1'),
(3345, 518, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3346, 518, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3347, 521, 'banner_image', '1'),
(3348, 521, '_banner_image', 'field_5c5e7677fd4f2'),
(3349, 521, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3350, 521, '_sections', 'field_5c928803440f2'),
(3351, 521, 'sections_0_background', 'color'),
(3352, 521, '_sections_0_background', 'field_5c93be37769e9'),
(3353, 521, 'sections_0_bg_color', 'u_bg_white'),
(3354, 521, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3355, 521, 'sections_0_has_media', '--no-image'),
(3356, 521, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3357, 521, 'sections_0_image', ''),
(3358, 521, '_sections_0_image', 'field_5c9a8db975838'),
(3359, 521, 'sections_0_align_media', '--to-left'),
(3360, 521, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3361, 521, 'sections_0_heading', ''),
(3362, 521, '_sections_0_heading', 'field_5c9a8e1675839'),
(3363, 521, 'sections_0_sub-heading', ''),
(3364, 521, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3365, 521, 'sections_0_intro_section', ''),
(3366, 521, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3367, 521, 'sections_0_visibility', '1'),
(3368, 521, '_sections_0_visibility', 'field_5cc868a43f331'),
(3369, 521, 'sections_0_has_cta', '0'),
(3370, 521, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3371, 521, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3372, 521, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3373, 521, 'sections_0_align_content', '--align_left'),
(3374, 521, '_sections_0_align_content', 'field_5c9a918453638'),
(3375, 521, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3376, 521, '_sections_0_content', 'field_5d63382a334d1'),
(3377, 521, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3378, 521, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3379, 523, 'banner_image', '1'),
(3380, 523, '_banner_image', 'field_5c5e7677fd4f2'),
(3381, 523, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3382, 523, '_sections', 'field_5c928803440f2'),
(3383, 523, 'sections_0_background', 'color'),
(3384, 523, '_sections_0_background', 'field_5c93be37769e9'),
(3385, 523, 'sections_0_bg_color', 'u_bg_white'),
(3386, 523, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3387, 523, 'sections_0_has_media', '--no-image'),
(3388, 523, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3389, 523, 'sections_0_image', ''),
(3390, 523, '_sections_0_image', 'field_5c9a8db975838'),
(3391, 523, 'sections_0_align_media', '--to-left'),
(3392, 523, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3393, 523, 'sections_0_heading', ''),
(3394, 523, '_sections_0_heading', 'field_5c9a8e1675839'),
(3395, 523, 'sections_0_sub-heading', ''),
(3396, 523, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3397, 523, 'sections_0_intro_section', ''),
(3398, 523, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3399, 523, 'sections_0_visibility', '1'),
(3400, 523, '_sections_0_visibility', 'field_5cc868a43f331'),
(3401, 523, 'sections_0_has_cta', '0'),
(3402, 523, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3403, 523, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3404, 523, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3405, 523, 'sections_0_align_content', '--align_left'),
(3406, 523, '_sections_0_align_content', 'field_5c9a918453638'),
(3407, 523, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3408, 523, '_sections_0_content', 'field_5d63382a334d1'),
(3409, 523, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3410, 523, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3411, 525, 'banner_image', '1'),
(3412, 525, '_banner_image', 'field_5c5e7677fd4f2'),
(3413, 525, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3414, 525, '_sections', 'field_5c928803440f2'),
(3415, 525, 'sections_0_background', 'color'),
(3416, 525, '_sections_0_background', 'field_5c93be37769e9'),
(3417, 525, 'sections_0_bg_color', 'u_bg_white'),
(3418, 525, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3419, 525, 'sections_0_has_media', '--no-image'),
(3420, 525, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3421, 525, 'sections_0_image', ''),
(3422, 525, '_sections_0_image', 'field_5c9a8db975838'),
(3423, 525, 'sections_0_align_media', '--to-left'),
(3424, 525, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3425, 525, 'sections_0_heading', ''),
(3426, 525, '_sections_0_heading', 'field_5c9a8e1675839'),
(3427, 525, 'sections_0_sub-heading', ''),
(3428, 525, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3429, 525, 'sections_0_intro_section', ''),
(3430, 525, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3431, 525, 'sections_0_visibility', '1'),
(3432, 525, '_sections_0_visibility', 'field_5cc868a43f331'),
(3433, 525, 'sections_0_has_cta', '0'),
(3434, 525, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3435, 525, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3436, 525, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3437, 525, 'sections_0_align_content', '--align_left'),
(3438, 525, '_sections_0_align_content', 'field_5c9a918453638'),
(3439, 525, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3440, 525, '_sections_0_content', 'field_5d63382a334d1'),
(3441, 525, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3442, 525, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title'),
(3443, 527, 'banner_image', '1'),
(3444, 527, '_banner_image', 'field_5c5e7677fd4f2'),
(3445, 527, 'sections', 'a:1:{i:0;s:7:"wysiwyg";}'),
(3446, 527, '_sections', 'field_5c928803440f2'),
(3447, 527, 'sections_0_background', 'color'),
(3448, 527, '_sections_0_background', 'field_5c93be37769e9'),
(3449, 527, 'sections_0_bg_color', 'u_bg_white'),
(3450, 527, '_sections_0_bg_color', 'field_5c93be82769ea'),
(3451, 527, 'sections_0_has_media', '--no-image'),
(3452, 527, '_sections_0_has_media', 'field_5c9a8d4c8628d'),
(3453, 527, 'sections_0_image', ''),
(3454, 527, '_sections_0_image', 'field_5c9a8db975838'),
(3455, 527, 'sections_0_align_media', '--to-left'),
(3456, 527, '_sections_0_align_media', 'field_5c9a9e9bcd434'),
(3457, 527, 'sections_0_heading', ''),
(3458, 527, '_sections_0_heading', 'field_5c9a8e1675839'),
(3459, 527, 'sections_0_sub-heading', ''),
(3460, 527, '_sections_0_sub-heading', 'field_5c9a8e337583a'),
(3461, 527, 'sections_0_intro_section', ''),
(3462, 527, '_sections_0_intro_section', 'field_5c9a93fbdc6c3'),
(3463, 527, 'sections_0_visibility', '1'),
(3464, 527, '_sections_0_visibility', 'field_5cc868a43f331'),
(3465, 527, 'sections_0_has_cta', '0'),
(3466, 527, '_sections_0_has_cta', 'field_5c9a8e8c7583c'),
(3467, 527, 'sections_0_column_size', 'col-md-2 col-lg-1'),
(3468, 527, '_sections_0_column_size', 'field_5c93bef6769ec'),
(3469, 527, 'sections_0_align_content', '--align_left'),
(3470, 527, '_sections_0_align_content', 'field_5c9a918453638'),
(3471, 527, 'sections_0_content', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;'),
(3472, 527, '_sections_0_content', 'field_5d63382a334d1'),
(3473, 527, 'sections_0_acfe_flexible_layout_title', 'WYSIWYG'),
(3474, 527, '_sections_0_acfe_flexible_layout_title', 'field_acfe_flexible_layout_title') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-07 03:24:02', '2019-02-07 03:24:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-02-07 03:24:02', '2019-02-07 03:24:02', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 0),
(2, 1, '2019-02-07 03:24:02', '2019-02-07 03:24:02', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-27 15:14:44', '2021-05-27 15:14:44', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(9, 1, '2019-02-07 04:22:47', '2019-02-07 04:22:47', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-07 04:22:47', '2019-02-07 04:22:47', '', 2, 'http://localhost:8888/2019/02/07/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-02-08 00:41:40', '2019-02-08 00:41:40', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-08 00:41:40', '2019-02-08 00:41:40', '', 2, 'http://localhost:8888/2019/02/08/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-02-09 00:15:38', '2019-02-09 00:15:38', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:15:38', '2019-02-09 00:15:38', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-02-09 00:16:13', '2019-02-09 00:16:13', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:16:13', '2019-02-09 00:16:13', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-02-09 00:18:23', '2019-02-09 00:18:23', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<h1>Lorem ipsum dolor</h1>\r\n<h2>sit amet, consectetur</h2>\r\n<h3>adipisicing elit, sed do</h3>\r\n<p>eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 00:18:23', '2019-02-09 00:18:23', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-02-09 06:51:50', '2019-02-09 06:51:50', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class="wp-block-quote">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n<h1>Lorem ipsum dolor</h1>\r\n<h2>sit amet, consectetur</h2>\r\n<h3>adipisicing elit, sed do</h3>\r\n<p>eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 06:51:50', '2019-02-09 06:51:50', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-02-09 07:25:47', '2019-02-09 07:25:47', '<h1>This is a heading one</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h2>This is a heading two</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<h3>This is heading three</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>&nbsp;</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-09 07:25:47', '2019-02-09 07:25:47', '', 2, 'http://localhost:8888/2019/02/09/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:25:"Type a label for the link";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:4:"Link";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Link Name', 'link_name', 'publish', 'closed', 'closed', '', 'field_5c5e876437da0', '', '', '2019-02-09 07:58:19', '2019-02-09 07:58:19', '', 70, 'http://localhost:8888/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:21:"Select a page to link";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Link URL', 'link_url', 'publish', 'closed', 'closed', '', 'field_5c5e879037da1', '', '', '2019-02-09 07:58:19', '2019-02-09 07:58:19', '', 70, 'http://localhost:8888/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2019-02-09 07:58:19', '2019-02-09 07:58:19', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:41:"How you want the link to open in browser?";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:4:"null";s:16:"Same browser tab";s:6:"_blank";s:15:"New browser tab";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:1;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Link Target', 'link_target', 'publish', 'closed', 'closed', '', 'field_5c5e87bc37da2', '', '', '2019-02-09 08:02:19', '2019-02-09 08:02:19', '', 70, 'http://localhost:8888/?post_type=acf-field&#038;p=74', 2, 'acf-field', '', 0),
(265, 1, '2021-05-27 14:57:40', '2019-04-26 13:43:20', '', 'Learn More', '', 'publish', 'closed', 'closed', '', 'lets-chat', '', '', '2021-05-27 14:57:40', '2021-05-27 14:57:40', '', 0, 'https://versacreative.test/?p=265', 6, 'nav_menu_item', '', 0),
(289, 1, '2019-05-01 19:59:51', '2019-05-01 19:59:51', 'a:12:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:15:"acf/testimonial";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:12:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:10:"discussion";i:3;s:8:"comments";i:4;s:9:"revisions";i:5;s:4:"slug";i:6;s:6:"author";i:7;s:6:"format";i:8;s:14:"featured_image";i:9;s:10:"categories";i:10;s:4:"tags";i:11;s:15:"send-trackbacks";}s:11:"description";s:0:"";s:18:"acfe_display_title";s:0:"";s:13:"acfe_autosync";s:0:"";s:9:"acfe_form";i:0;s:9:"acfe_meta";s:0:"";s:9:"acfe_note";s:0:"";}', 'Add Section', 'add-section', 'trash', 'closed', 'closed', '', 'group_5c9287fec593e__trashed', '', '', '2021-05-27 13:25:30', '2021-05-27 13:25:30', '', 0, 'https://versacreative.test/?p=289', 0, 'acf-field-group', '', 0),
(290, 1, '2019-05-01 19:59:51', '2019-05-01 19:59:51', 'a:17:{s:4:"type";s:16:"flexible_content";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:16:"acfe_permissions";s:0:"";s:29:"acfe_flexible_stylised_button";i:1;s:32:"acfe_flexible_layouts_thumbnails";i:1;s:31:"acfe_flexible_layouts_templates";i:0;s:26:"acfe_flexible_close_button";i:0;s:24:"acfe_flexible_copy_paste";i:1;s:27:"acfe_flexible_modal_edition";i:1;s:19:"acfe_flexible_modal";a:4:{s:27:"acfe_flexible_modal_enabled";s:1:"1";s:25:"acfe_flexible_modal_title";s:0:"";s:23:"acfe_flexible_modal_col";s:1:"4";s:30:"acfe_flexible_modal_categories";s:1:"0";}s:7:"layouts";a:1:{s:20:"layout_5cc85e757124c";a:7:{s:3:"key";s:20:"layout_5cc85e757124c";s:5:"label";s:7:"WYSIWYG";s:4:"name";s:7:"wysiwyg";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";s:23:"acfe_flexible_thumbnail";s:3:"393";}}s:12:"button_label";s:11:"Add Section";s:3:"min";s:0:"";s:3:"max";s:0:"";}', 'Sections', 'sections', 'trash', 'closed', 'closed', '', 'field_5c928803440f2__trashed', '', '', '2021-05-27 13:25:30', '2021-05-27 13:25:30', '', 289, 'https://versacreative.test/?post_type=acf-field&#038;p=290', 0, 'acf-field', '', 0),
(336, 1, '2019-05-01 19:59:51', '2019-05-01 19:59:51', 'a:14:{s:4:"type";s:10:"true_false";s:12:"instructions";s:23:"Hide/Show this section?";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_5cc85e757124c";s:16:"acfe_permissions";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:1;s:10:"ui_on_text";s:4:"Show";s:11:"ui_off_text";s:4:"Hide";s:13:"acfe_validate";s:0:"";s:11:"acfe_update";s:0:"";}', 'Visibility', 'visibility', 'publish', 'closed', 'closed', '', 'field_5cc868a43f331', '', '', '2019-08-26 01:39:14', '2019-08-26 01:39:14', '', 290, 'https://versacreative.test/?post_type=acf-field&#038;p=336', 0, 'acf-field', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(346, 1, '2019-05-01 20:04:31', '2019-05-01 20:04:31', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:04:31', '2019-05-01 20:04:31', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(347, 1, '2019-05-01 20:09:43', '2019-05-01 20:09:43', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:09:43', '2019-05-01 20:09:43', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(348, 1, '2019-05-01 20:11:32', '2019-05-01 20:11:32', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:11:32', '2019-05-01 20:11:32', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(349, 1, '2019-05-01 20:13:46', '2019-05-01 20:13:46', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-01 20:13:46', '2019-05-01 20:13:46', '', 2, 'https://versacreative.test/2019/05/01/2-revision-v1/', 0, 'revision', '', 0),
(390, 1, '2019-08-26 01:39:14', '2019-08-26 01:39:14', 'a:14:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5cc868a43f331";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}}s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_5cc85e757124c";s:16:"acfe_permissions";s:0:"";s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;s:13:"acfe_validate";s:0:"";s:11:"acfe_update";s:0:"";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5d63382a334d1', '', '', '2019-08-26 01:39:14', '2019-08-26 01:39:14', '', 290, 'http://backbone.test/?post_type=acf-field&p=390', 1, 'acf-field', '', 0),
(391, 1, '2019-08-26 01:42:57', '2019-08-26 01:42:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:42:57', '2019-08-26 01:42:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(392, 1, '2019-08-26 01:42:57', '2019-08-26 01:42:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:42:57', '2019-08-26 01:42:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(394, 1, '2019-08-26 01:43:50', '2019-08-26 01:43:50', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:50', '2019-08-26 01:43:50', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(395, 1, '2019-08-26 01:43:50', '2019-08-26 01:43:50', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:50', '2019-08-26 01:43:50', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(396, 1, '2019-08-26 01:43:56', '2019-08-26 01:43:56', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:56', '2019-08-26 01:43:56', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(397, 1, '2019-08-26 01:43:56', '2019-08-26 01:43:56', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:43:56', '2019-08-26 01:43:56', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(399, 1, '2019-08-26 01:58:57', '2019-08-26 01:58:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:58:57', '2019-08-26 01:58:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(400, 1, '2019-08-26 01:58:57', '2019-08-26 01:58:57', '<h1>This is a heading one</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This is a heading two</h2>\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This is heading three</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-26 01:58:57', '2019-08-26 01:58:57', '', 2, 'http://backbone.test/2019/08/26/2-revision-v1/', 0, 'revision', '', 0),
(463, 1, '2021-05-26 16:50:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-26 16:50:48', '0000-00-00 00:00:00', '', 0, 'https://backbone.test/?p=463', 0, 'post', '', 0),
(465, 1, '2021-05-26 19:46:34', '2021-05-26 19:46:34', '{"BackBone::custom_logo":{"value":464,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-05-26 19:46:34"}}', '', '', 'trash', 'closed', 'closed', '', '8fb81c28-a017-44a0-8e08-849f8629bb46', '', '', '2021-05-26 19:46:34', '2021-05-26 19:46:34', '', 0, 'https://backbone.test/8fb81c28-a017-44a0-8e08-849f8629bb46/', 0, 'customize_changeset', '', 0),
(466, 1, '2021-05-27 14:57:40', '2021-05-26 19:54:37', '', 'Page 1', '', 'publish', 'closed', 'closed', '', 'myenergybuddy', '', '', '2021-05-27 14:57:40', '2021-05-27 14:57:40', '', 0, 'https://backbone.test/?p=466', 1, 'nav_menu_item', '', 0),
(467, 1, '2021-05-27 14:57:40', '2021-05-26 19:54:37', '', 'Page 2', '', 'publish', 'closed', 'closed', '', 'difference', '', '', '2021-05-27 14:57:40', '2021-05-27 14:57:40', '', 0, 'https://backbone.test/?p=467', 2, 'nav_menu_item', '', 0),
(468, 1, '2021-05-27 14:57:40', '2021-05-26 19:54:37', '', 'Page 3', '', 'publish', 'closed', 'closed', '', 'service-areas', '', '', '2021-05-27 14:57:40', '2021-05-27 14:57:40', '', 0, 'https://backbone.test/?p=468', 3, 'nav_menu_item', '', 0),
(469, 1, '2021-05-27 14:57:40', '2021-05-26 19:54:37', '', 'Page 4', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-05-27 14:57:40', '2021-05-27 14:57:40', '', 0, 'https://backbone.test/?p=469', 4, 'nav_menu_item', '', 0),
(470, 1, '2021-05-27 14:57:40', '2021-05-26 19:54:37', '', 'Page 5', '', 'publish', 'closed', 'closed', '', 'how-it-works', '', '', '2021-05-27 14:57:40', '2021-05-27 14:57:40', '', 0, 'https://backbone.test/?p=470', 5, 'nav_menu_item', '', 0),
(473, 1, '2021-05-26 20:55:27', '2021-05-26 20:55:27', '', 'Section Blocks', '', 'trash', 'closed', 'closed', '', 'blocks__trashed', '', '', '2021-05-27 13:37:32', '2021-05-27 13:37:32', '', 0, 'https://backbone.test/?post_type=acfe-dbt&#038;p=473', 0, 'acfe-dbt', '', 0),
(475, 1, '2021-05-27 13:37:11', '2021-05-27 13:37:11', 'a:12:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:4:"left";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:18:"acfe_display_title";s:0:"";s:13:"acfe_autosync";s:0:"";s:9:"acfe_form";i:0;s:9:"acfe_meta";s:0:"";s:9:"acfe_note";s:0:"";}', 'Page Header', 'page-header', 'trash', 'closed', 'closed', '', 'group_60af9e99d70c3__trashed', '', '', '2021-05-27 13:39:09', '2021-05-27 13:39:09', '', 0, 'https://backbone.test/?post_type=acf-field-group&#038;p=475', 0, 'acf-field-group', '', 0),
(476, 1, '2021-05-27 13:37:52', '2021-05-27 13:37:52', '', 'Page Header', '', 'publish', 'closed', 'closed', '', 'page-header', '', '', '2021-05-27 15:10:41', '2021-05-27 15:10:41', '', 0, 'https://backbone.test/?post_type=acfe-dbt&#038;p=476', 0, 'acfe-dbt', '', 0),
(477, 1, '2021-05-27 13:42:04', '2021-05-27 13:42:04', 'a:12:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:15:"acf/page-header";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:4:"left";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:18:"acfe_display_title";s:0:"";s:13:"acfe_autosync";s:0:"";s:9:"acfe_form";i:0;s:9:"acfe_meta";s:0:"";s:9:"acfe_note";s:0:"";}', 'Page Header', 'page-header', 'publish', 'closed', 'closed', '', 'group_60afa102011cf', '', '', '2021-05-27 14:10:01', '2021-05-27 14:10:01', '', 0, 'https://backbone.test/?post_type=acf-field-group&#038;p=477', 0, 'acf-field-group', '', 0),
(478, 1, '2021-05-27 13:41:50', '2021-05-27 13:41:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:41:50', '2021-05-27 13:41:50', '', 2, 'https://backbone.test/?p=478', 0, 'revision', '', 0),
(479, 1, '2021-05-27 13:42:04', '2021-05-27 13:42:04', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:23:"Select background color";s:8:"required";i:1;s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_60afa4b31540d";s:8:"operator";s:2:"==";s:5:"value";s:5:"Color";}}}s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Background Color', 'background_color', 'publish', 'closed', 'closed', '', 'field_60afa10d98bc3', '', '', '2021-05-27 13:57:10', '2021-05-27 13:57:10', '', 477, 'https://backbone.test/?post_type=acf-field&#038;p=479', 1, 'acf-field', '', 0),
(480, 1, '2021-05-27 13:42:04', '2021-05-27 13:42:04', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:22:"Enter the content here";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Content Editor', 'content_editor', 'publish', 'closed', 'closed', '', 'field_60afa12d98bc4', '', '', '2021-05-27 13:56:22', '2021-05-27 13:56:22', '', 477, 'https://backbone.test/?post_type=acf-field&#038;p=480', 3, 'acf-field', '', 0),
(481, 1, '2021-05-27 13:42:07', '2021-05-27 13:42:07', '<p> </p>\n<p> </p>\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1a56de51",\n    "name": "acf\\/page-header",\n    "data": [],\n    "align": "",\n    "mode": "preview"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:42:07', '2021-05-27 13:42:07', '', 2, 'https://backbone.test/?p=481', 0, 'revision', '', 0),
(483, 1, '2021-05-27 13:43:07', '2021-05-27 13:43:07', '<p> </p>\n<p> </p>\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1a56de51",\n    "name": "acf\\/page-header",\n    "data": [],\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1b36de52",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#dd3333",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "sdafasdfasdfasdfasdfasdfasdf",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:image {"className":"is-style-rounded"} -->\n<figure class="wp-block-image is-style-rounded"><img alt=""/></figure>\n<!-- /wp:image -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:43:07', '2021-05-27 13:43:07', '', 2, 'https://backbone.test/?p=483', 0, 'revision', '', 0),
(484, 1, '2021-05-27 13:43:07', '2021-05-27 13:43:07', '<p> </p>\n<p> </p>\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1a56de51",\n    "name": "acf\\/page-header",\n    "data": [],\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1b36de52",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#dd3333",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "sdafasdfasdfasdfasdfasdfasdf",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:image {"className":"is-style-rounded"} -->\n<figure class="wp-block-image is-style-rounded"><img alt=""/></figure>\n<!-- /wp:image -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:43:07', '2021-05-27 13:43:07', '', 2, 'https://backbone.test/?p=484', 0, 'revision', '', 0),
(486, 1, '2021-05-27 13:47:10', '2021-05-27 13:47:10', '<p> </p>\n<p> </p>\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa27d6de55",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#81d742",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "adfadfadsfadfad\\r\\n\\r\\nadfjaldfjlakdjflaj\\r\\n\\r\\nakjdflajdflkajkldf",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1a56de51",\n    "name": "acf\\/page-header",\n    "data": [],\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1b36de52",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#dd3333",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "sdafasdfasdfasdfasdfasdfasdf",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa2316de53",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa2746de54",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:47:10', '2021-05-27 13:47:10', '', 2, 'https://backbone.test/?p=486', 0, 'revision', '', 0),
(487, 1, '2021-05-27 13:47:10', '2021-05-27 13:47:10', '<p> </p>\n<p> </p>\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa27d6de55",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#81d742",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "adfadfadsfadfad\\r\\n\\r\\nadfjaldfjlakdjflaj\\r\\n\\r\\nakjdflajdflkajkldf",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1a56de51",\n    "name": "acf\\/page-header",\n    "data": [],\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa1b36de52",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#dd3333",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "sdafasdfasdfasdfasdfasdfasdf",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa2316de53",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->\n\n<!-- wp:acf/page-header {\n    "id": "block_60afa2746de54",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:47:10', '2021-05-27 13:47:10', '', 2, 'https://backbone.test/?p=487', 0, 'revision', '', 0),
(488, 1, '2021-05-27 13:51:41', '2021-05-27 13:51:41', '<!-- wp:acf/page-header {\n    "id": "block_60afa3e96de56",\n    "name": "acf\\/page-header",\n    "align": "",\n    "mode": "preview"\n} /-->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:51:41', '2021-05-27 13:51:41', '', 2, 'https://backbone.test/?p=488', 0, 'revision', '', 0),
(489, 1, '2021-05-27 13:51:41', '2021-05-27 13:51:41', '<!-- wp:acf/page-header {\n    "id": "block_60afa3e96de56",\n    "name": "acf\\/page-header",\n    "align": "",\n    "mode": "preview"\n} /-->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:51:41', '2021-05-27 13:51:41', '', 2, 'https://backbone.test/?p=489', 0, 'revision', '', 0),
(490, 1, '2021-05-27 13:52:28', '2021-05-27 13:52:28', '<!-- wp:acf/page-header {\n    "id": "block_60afa3e96de56",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "preview"\n} /-->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:52:28', '2021-05-27 13:52:28', '', 2, 'https://backbone.test/?p=490', 0, 'revision', '', 0),
(491, 1, '2021-05-27 13:52:56', '2021-05-27 13:52:56', '<!-- wp:paragraph -->\n<p>asdfasdfasdf</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:52:56', '2021-05-27 13:52:56', '', 2, 'https://backbone.test/?p=491', 0, 'revision', '', 0),
(492, 1, '2021-05-27 13:52:56', '2021-05-27 13:52:56', '<!-- wp:paragraph -->\n<p>asdfasdfasdf</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:52:56', '2021-05-27 13:52:56', '', 2, 'https://backbone.test/?p=492', 0, 'revision', '', 0),
(493, 1, '2021-05-27 13:54:15', '2021-05-27 13:54:15', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#595959",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "hello\\r\\n\\r\\n&nbsp;\\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:54:15', '2021-05-27 13:54:15', '', 2, 'https://backbone.test/?p=493', 0, 'revision', '', 0),
(494, 1, '2021-05-27 13:54:15', '2021-05-27 13:54:15', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_color": "#595959",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "hello\\r\\n\\r\\n&nbsp;\\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "edit"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:54:15', '2021-05-27 13:54:15', '', 2, 'https://backbone.test/?p=494', 0, 'revision', '', 0),
(495, 1, '2021-05-27 13:56:22', '2021-05-27 13:56:22', 'a:10:{s:4:"type";s:12:"button_group";s:12:"instructions";s:32:"Select the block background type";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:5:"Color";s:5:"Color";s:5:"Image";s:5:"Image";}s:10:"allow_null";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"return_format";s:5:"value";}', 'Background Type', 'background_type', 'publish', 'closed', 'closed', '', 'field_60afa4b31540d', '', '', '2021-05-27 14:10:01', '2021-05-27 14:10:01', '', 477, 'https://backbone.test/?post_type=acf-field&#038;p=495', 0, 'acf-field', '', 0),
(496, 1, '2021-05-27 13:56:22', '2021-05-27 13:56:22', 'a:17:{s:4:"type";s:5:"image";s:12:"instructions";s:23:"Upload background image";s:8:"required";i:1;s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_60afa4b31540d";s:8:"operator";s:2:"==";s:5:"value";s:5:"Image";}}}s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:8:"uploader";s:0:"";s:14:"acfe_thumbnail";i:0;s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:7:"library";s:3:"all";}', 'Background Image', 'background_image', 'publish', 'closed', 'closed', '', 'field_60afa4e11540e', '', '', '2021-05-27 13:57:52', '2021-05-27 13:57:52', '', 477, 'https://backbone.test/?post_type=acf-field&#038;p=496', 2, 'acf-field', '', 0),
(499, 1, '2021-05-27 13:59:27', '2021-05-27 13:59:27', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "#595959",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "hello\\r\\n\\r\\n \\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:59:27', '2021-05-27 13:59:27', '', 2, 'https://backbone.test/?p=499', 0, 'revision', '', 0),
(500, 1, '2021-05-27 13:59:27', '2021-05-27 13:59:27', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "#595959",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "hello\\r\\n\\r\\n \\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:59:27', '2021-05-27 13:59:27', '', 2, 'https://backbone.test/?p=500', 0, 'revision', '', 0),
(501, 1, '2021-05-27 13:59:58', '2021-05-27 13:59:58', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 498,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "hello\\r\\n\\r\\n \\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:59:58', '2021-05-27 13:59:58', '', 2, 'https://backbone.test/?p=501', 0, 'revision', '', 0),
(502, 1, '2021-05-27 13:59:58', '2021-05-27 13:59:58', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 498,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "hello\\r\\n\\r\\n \\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 13:59:58', '2021-05-27 13:59:58', '', 2, 'https://backbone.test/?p=502', 0, 'revision', '', 0),
(503, 1, '2021-05-27 14:03:08', '2021-05-27 14:03:08', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "#595959",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "hello\\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:03:08', '2021-05-27 14:03:08', '', 2, 'https://backbone.test/?p=503', 0, 'revision', '', 0),
(504, 1, '2021-05-27 14:03:08', '2021-05-27 14:03:08', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "#595959",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "hello\\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:03:08', '2021-05-27 14:03:08', '', 2, 'https://backbone.test/?p=504', 0, 'revision', '', 0),
(505, 1, '2021-05-27 14:10:12', '2021-05-27 14:10:12', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 498,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "hello\\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:10:12', '2021-05-27 14:10:12', '', 2, 'https://backbone.test/?p=505', 0, 'revision', '', 0),
(506, 1, '2021-05-27 14:10:12', '2021-05-27 14:10:12', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 498,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "hello\\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:10:12', '2021-05-27 14:10:12', '', 2, 'https://backbone.test/?p=506', 0, 'revision', '', 0),
(507, 1, '2021-05-27 14:10:13', '2021-05-27 14:10:13', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 498,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "hello\\r\\n\\r\\nasdkjfalkdjflkajdf\\r\\n\\r\\na\\r\\n\\r\\nsdf\\r\\n\\r\\nadf\\r\\n\\r\\na\\r\\n\\r\\nd",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:10:13', '2021-05-27 14:10:13', '', 2, 'https://backbone.test/?p=507', 0, 'revision', '', 0),
(509, 1, '2021-05-27 14:31:56', '2021-05-27 14:31:56', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 508,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:31:56', '2021-05-27 14:31:56', '', 2, 'https://backbone.test/?p=509', 0, 'revision', '', 0),
(510, 1, '2021-05-27 14:31:56', '2021-05-27 14:31:56', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 508,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:31:56', '2021-05-27 14:31:56', '', 2, 'https://backbone.test/?p=510', 0, 'revision', '', 0),
(511, 1, '2021-05-27 14:40:39', '2021-05-27 14:40:39', '', 'lovers', '', 'inherit', 'open', 'closed', '', 'lovers', '', '', '2021-05-27 14:40:39', '2021-05-27 14:40:39', '', 2, 'https://backbone.test/wp-content/uploads/lovers.jpg', 0, 'attachment', 'image/jpeg', 0),
(512, 1, '2021-05-27 14:40:43', '2021-05-27 14:40:43', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:40:43', '2021-05-27 14:40:43', '', 2, 'https://backbone.test/?p=512', 0, 'revision', '', 0),
(513, 1, '2021-05-27 14:40:43', '2021-05-27 14:40:43', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:40:43', '2021-05-27 14:40:43', '', 2, 'https://backbone.test/?p=513', 0, 'revision', '', 0),
(514, 1, '2021-05-27 14:41:35', '2021-05-27 14:41:35', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:41:35', '2021-05-27 14:41:35', '', 2, 'https://backbone.test/?p=514', 0, 'revision', '', 0),
(515, 1, '2021-05-27 14:41:35', '2021-05-27 14:41:35', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 14:41:35', '2021-05-27 14:41:35', '', 2, 'https://backbone.test/?p=515', 0, 'revision', '', 0),
(516, 1, '2021-05-27 14:55:49', '2021-05-27 14:55:49', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-05-27 14:55:49', '2021-05-27 14:55:49', '', 0, 'https://backbone.test/wp-content/uploads/logo.png', 0, 'attachment', 'image/png', 0),
(517, 1, '2021-05-27 14:56:13', '2021-05-27 14:56:13', '{"blogname":{"value":"Backbone","type":"option","user_id":1,"date_modified_gmt":"2021-05-27 14:56:13"},"blogdescription":{"value":"","type":"option","user_id":1,"date_modified_gmt":"2021-05-27 14:56:13"},"BackBone::custom_logo":{"value":516,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-05-27 14:56:13"}}', '', '', 'trash', 'closed', 'closed', '', '61d6b806-d380-4f06-a191-d7e7e66dbf7d', '', '', '2021-05-27 14:56:13', '2021-05-27 14:56:13', '', 0, 'https://backbone.test/61d6b806-d380-4f06-a191-d7e7e66dbf7d/', 0, 'customize_changeset', '', 0),
(518, 1, '2021-05-27 15:08:36', '2021-05-27 15:08:36', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:08:36', '2021-05-27 15:08:36', '', 2, 'https://backbone.test/?p=518', 0, 'revision', '', 0),
(520, 1, '2021-05-27 15:12:17', '2021-05-27 15:12:17', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:12:17', '2021-05-27 15:12:17', '', 2, 'https://backbone.test/?p=520', 0, 'revision', '', 0),
(521, 1, '2021-05-27 15:12:17', '2021-05-27 15:12:17', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:12:17', '2021-05-27 15:12:17', '', 2, 'https://backbone.test/?p=521', 0, 'revision', '', 0),
(522, 1, '2021-05-27 15:12:28', '2021-05-27 15:12:28', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:12:28', '2021-05-27 15:12:28', '', 2, 'https://backbone.test/?p=522', 0, 'revision', '', 0),
(523, 1, '2021-05-27 15:12:28', '2021-05-27 15:12:28', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:12:28', '2021-05-27 15:12:28', '', 2, 'https://backbone.test/?p=523', 0, 'revision', '', 0),
(524, 1, '2021-05-27 15:14:31', '2021-05-27 15:14:31', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "#eeee22",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:14:31', '2021-05-27 15:14:31', '', 2, 'https://backbone.test/?p=524', 0, 'revision', '', 0),
(525, 1, '2021-05-27 15:14:32', '2021-05-27 15:14:32', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Color",\n        "_background_type": "field_60afa4b31540d",\n        "background_color": "#eeee22",\n        "_background_color": "field_60afa10d98bc3",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:14:32', '2021-05-27 15:14:32', '', 2, 'https://backbone.test/?p=525', 0, 'revision', '', 0),
(526, 1, '2021-05-27 15:14:44', '2021-05-27 15:14:44', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:14:44', '2021-05-27 15:14:44', '', 2, 'https://backbone.test/?p=526', 0, 'revision', '', 0),
(527, 1, '2021-05-27 15:14:44', '2021-05-27 15:14:44', '<!-- wp:acf/page-header {\n    "id": "block_60afa468e73d0",\n    "name": "acf\\/page-header",\n    "data": {\n        "background_type": "Image",\n        "_background_type": "field_60afa4b31540d",\n        "background_image": 511,\n        "_background_image": "field_60afa4e11540e",\n        "content_editor": "<h1>Cat Lovers<\\/h1>\\r\\n<strong>Lorem ipsum dolor sit, amet consectetur adipisicing elit.<\\/strong> Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Natus explicabo, nisi totam deleniti repellendus quas, mollitia dolorum iure autem quisquam odio expedita earum tenetur sequi delectus recusandae eaque eius beatae.",\n        "_content_editor": "field_60afa12d98bc4"\n    },\n    "align": "",\n    "mode": "auto"\n} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-27 15:14:44', '2021-05-27 15:14:44', '', 2, 'https://backbone.test/?p=527', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(265, 2, 0),
(289, 1, 0),
(466, 2, 0),
(467, 2, 0),
(468, 2, 0),
(469, 2, 0),
(470, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'acf-field-group-category', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0),
(3, 'Custom Blocks', 'custom-blocks', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:"ccf8b120b00555c83da0e7b59206ea10e5c5b61cacf7d1523c6b4e3d94d48ebc";a:4:{s:10:"expiration";i:1622220648;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36";s:5:"login";i:1622047848;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '463'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:"title-attribute";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1622125911'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:"commentstatusdiv";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";}'),
(27, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(28, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:21:"dashboard_site_health";i:1;s:21:"dashboard_quick_press";i:2;s:17:"dashboard_primary";i:3;s:18:"dashboard_activity";}'),
(29, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:41:"dashboard_site_health,dashboard_right_now";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:18:"dashboard_activity";s:7:"column4";s:0:"";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B5FIhV.Md7fQuG85cxxunJHCZ1BtNz/', 'root', 'webdevelopers@versacreative.com', '', '2019-02-07 03:24:02', '', 0, 'root') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#


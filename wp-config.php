<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'backbone');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ')6f_^Zh]%<~S1OxfL^;sX.^wCMdUHk+2/ XuPlJ-?RehY}!L__M}~^%hw3L)_=ez');
define('SECURE_AUTH_KEY',  '`t3U-/E*R-6dM)2^-$a<jh{7RQyB@!B%gJ<XwY bri5y+SQF.}Zb/6%*G*?G{JWE');
define('LOGGED_IN_KEY',    'dVGPx9!f^w/8FRXUK)sWGd Qq)%~DdIP+]#>&q#^UQwNKa}r.T=;..iPE}<:<#~4');
define('NONCE_KEY',        'Bgw>u%x.Uh2+anfI)zH%@BAbSFx&O*K6ikbgcznTp&[#ZNLk|)omh4Cxlc@`+TYa');
define('AUTH_SALT',        '55L=`IvoPKl*SrgGkvrcl/PbpWMWYGQL0fN3s[QY+M0ATrbr-t(|{ZXB|I56 $91');
define('SECURE_AUTH_SALT', 'tlF9vM -+j0N}^^=GMdCLK[CuRac1MAi5jL2%+A{SvF@7@48_wtey++,}psrkF^a');
define('LOGGED_IN_SALT',   '}z-M&Kr|X/sV9.Y|6IrfvPF6CRe?{PV9^ T[@I$R!K4fY`0g0`uBrXIO(?cr4?Ms');
define('NONCE_SALT',       'iN[OoRrVC1Z6b&}?@+rl?&^aSe&(et%[|],]Gcf)8mup91(yM0jKM=(VW~_*!aQx');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

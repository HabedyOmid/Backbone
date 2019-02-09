<?php
/**
 * The header for our theme
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 */
?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="apple-touch-icon" sizes="180x180" href="<?php echo get_template_directory_uri() . '/apple-touch-icon.png'; ?>">
	<link rel="icon" type="image/png" sizes="32x32" href="<?php echo get_template_directory_uri() . '/favicon-32x32.png'; ?>">
	<link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_template_directory_uri() . '/favicon-16x16.png'; ?>">
	<link rel="manifest" href="<?php echo get_template_directory_uri() . '/site.webmanifest'; ?>">
	<link rel="mask-icon" href="<?php echo get_template_directory_uri() . '/safari-pinned-tab.svg'; ?>" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="theme-color" content="#ffffff">
	<link rel="manifest" href="<?php echo get_template_directory_uri() . '/site.webmanifest'; ?>">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?> >
	
	<?php get_template_part( 'layouts/nav' ); // Get Navbar ?>
	<?php get_template_part( 'layouts/header' ); // Get Header ?>

	<main>
		<div id="content">




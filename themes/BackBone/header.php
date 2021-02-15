<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="icon" type="image/png" href="<?php echo get_template_directory_uri();?>/favicon.png">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?> >

	<?php wp_body_open(); ?>

	<?php get_template_part( 'components/navbar' ); // Get Navbar ?>

	<main>
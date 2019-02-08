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

	<nav class="navbar navbar-expand-md affix-top" data-spy="affix" data-offset-top="50" role="navigation">
  		<div class="container">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<h1>
				<?php // Custom logo
				$custom_logo_id = get_theme_mod( 'custom_logo' );
				$image_alt = get_post_meta( $custom_logo_id, '_wp_attachment_image_alt', true);
				$image = wp_get_attachment_image_src($custom_logo_id , 'full');?>
				<a class="navbar-brand" href="/" rel="home" title="<?php echo $image_alt;?>">
					<img src="<?php echo $image[0]; ?>" alt="<?php echo $image_alt;?>">
				</a>
			</h1>

			<?php
			wp_nav_menu( array(
				'theme_location'    => 'primary-menu',
				'depth'             => 2,
				'container'         => 'div',
				'container_class'   => 'collapse navbar-collapse',
				'container_id'      => 'bs-example-navbar-collapse-1',
				'menu_class'        => 'nav navbar-nav',
				'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
				'walker'            => new WP_Bootstrap_Navwalker(),
			) );?>
		</div>
	</nav>

	<header></header>

	<main>
		<div id="content">
			
			<section></section>




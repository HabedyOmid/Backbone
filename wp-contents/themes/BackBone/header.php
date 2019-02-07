<?php // The Theme Header ?>

<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php get_template_directory_uri() . '/16x16.png'; ?>">
	<link rel="icon" type="image/png" sizes="32x32" href="<?php get_template_directory_uri() . '/32x32.png'; ?>">
	<link rel="icon" type="image/png" sizes="96x96" href="<?php get_template_directory_uri() . '/96x96.png'; ?>">
	<link rel="icon" type="image/png" sizes=“160x160” href="<?php get_template_directory_uri() . '/160x160.png'; ?>">
	<link rel="icon" type="image/png" sizes=“180x180” href="<?php get_template_directory_uri() . '/180x180.png'; ?>">
	<link rel="icon" type="image/png" sizes=“196x196” href="<?php get_template_directory_uri() . '/196x196.png'; ?>">
	<link rel="apple-touch-icon" sizes="57x57" href="<?php get_template_directory_uri() . '/57x57.png'; ?>">
	<link rel="apple-touch-icon" sizes="60x60" href="<?php get_template_directory_uri() . '/60x60.png'; ?>">
	<link rel="apple-touch-icon" sizes="72x72" href="<?php get_template_directory_uri() . '/72x72.png'; ?>">
	<link rel="apple-touch-icon" sizes="76x76" href="<?php get_template_directory_uri() . '/76x76.png'; ?>">
	<link rel="apple-touch-icon" sizes="114x114" href="<?php get_template_directory_uri() . '/114x114.png'; ?>">
	<link rel="apple-touch-icon" sizes="120x120" href="<?php get_template_directory_uri() . '/120x120.png'; ?>">
	<link rel="apple-touch-icon" sizes="144x144" href="<?php get_template_directory_uri() . '/144x144.png'; ?>">
	<link rel="apple-touch-icon" sizes="152x152" href="<?php get_template_directory_uri() . '/152x152.png'; ?>">
	<link rel="apple-touch-icon" sizes="180x180" href="<?php get_template_directory_uri() . '/180x180.png'; ?>">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

	<?php wp_head(); ?>
</head>



<body <?php body_class(); ?>>
	<nav class="navbar navbar-expand-md affix-top" data-spy="affix" data-offset-top="100" role="navigation">
  		<div class="container">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="/">
				<?php // Custom logo
				$custom_logo_id = get_theme_mod( 'custom_logo' );
				$image_alt = get_post_meta( $custom_logo_id, '_wp_attachment_image_alt', true);
				$image = wp_get_attachment_image_src($custom_logo_id , 'full');?>
				<img src="<?php echo $image[0]; ?>" title="<?php echo $image_alt;?>">
			</a>

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


	
	<div class="content">
		<header>
			<div class="center-content">
				<h1>BackBone</h1>
				<p>An Awesome Wordpress Theme Starter</p>
			</div>
		</header>
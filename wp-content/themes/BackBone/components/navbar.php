<nav class="navbar" role="navigation">

	<div class="container">
		<button
			class="navbar__toggler"
			type="button"
			data-toggle="collapse"
			data-target="#navbar-collapse"
			aria-controls="navbar-collapse"
			aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<?php // Custom logo
		$custom_logo_id = get_theme_mod( 'custom_logo' );
		$image_alt = get_post_meta( $custom_logo_id, '_wp_attachment_image_alt', true);
		$image = wp_get_attachment_image_src($custom_logo_id , 'full');?>
		<div class="navbar__brand">
			<a href="/" rel="home" title="<?php echo $image_alt; ?>">
				<img src="<?php echo $image[0]; ?>" alt="<?php echo $image_alt;?>">
			</a>
		</div>

		<!-- navbar content  -->
    	<div class="navbar-content">
			<?php
			wp_nav_menu( array(
				'theme_location'    => 'primary-menu',
				'depth'             => 3,
				'container'         => 'div',
				'container_class'   => 'collapse navbar-collapse',
				'container_id'      => 'navbar-collapse',
				'menu_class'        => 'nav navbar-nav',
				'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
				'walker'            => new WP_Bootstrap_Navwalker(),
			) ); ?>
		</div>
	</div>
</nav>
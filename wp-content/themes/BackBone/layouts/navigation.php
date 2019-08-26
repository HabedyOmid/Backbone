<nav class="navbar" role="navigation">
	<div class="container">
		<button class="navbar__toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<h1 class="navbar__brand">
			<a href="/" rel="home" title="Backbone">
				Back<span>Bone</span>
			</a>
		</h1>

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
</nav>
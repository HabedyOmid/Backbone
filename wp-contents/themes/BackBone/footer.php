<?php // Template Footer ?>
	
		<footer class="main">
			<div class="container">
				<?php
					wp_nav_menu( array(
						'theme_location' 	=> 'primary',
						'container'			=> 'nav',
						'container_id'		=> 'primary',
						'fallback_cb'		=> 'WP_Bootstrap_Navwalker::fallback',
						'walker'			=> new WP_Bootstrap_Navwalker()
					) );
				?>
			</div>
		</footer>

	</div>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<?php wp_footer(); ?>
</body>
</html>

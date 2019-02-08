<?php
/**
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 */
?>


			<footer>
				<div class="site-info">
					<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'backbone' ) ); ?>">
						<?php
						printf( esc_html__( 'Proudly powered by %s', 'backbone' ), 'WordPress' );
						?>
					</a>
					<span class="sep"> | </span>
						<?php
						printf( esc_html__( 'Theme: %1$s by %2$s.', 'backbone' ), 'backbone', '<a href="http://underscores.me/">Underscores.me</a>' );
						?>
				</div>
			</footer>

		</div>
	</main>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	<?php wp_footer(); ?>
</body>
</html>

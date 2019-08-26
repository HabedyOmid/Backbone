	</main>
	<footer>
		<div class="container">
			<?php if( have_rows('footer_links', 'option') ) : while ( have_rows('footer_links', 'option') ) : the_row(); ?>
			<a href="<?php the_sub_field('link_url'); ?>" target="<?php the_sub_field('link_traget'); ?>" title="<?php the_sub_field('link_name'); ?>"><?php the_sub_field('link_name'); ?></a>
			<?php endwhile; endif; ?>	
		</div>
	</footer>
	
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<?php wp_footer(); ?>
</body>
</html>

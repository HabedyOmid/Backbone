<?php 
// The template for displaying all pages 
get_header();?>

	<div class="container">
		
		<?php
		if ( have_posts() ) :

			while ( have_posts() ) :
				the_post();
				the_content();
			endwhile;

		else:
			get_template_part( 'template-parts/content', 'none' );
		endif; ?>

	</div>

<?php get_footer(); ?>

<?php
// 
// The template for displaying all pages
// @link https://developer.wordpress.org/themes/basics/template-hierarchy/
get_header(); ?>
	
	<?php if(have_posts()) : ?>
	<section class="wp__content">
		<div class="container">
		<?php while ( have_posts() ) : the_post();

			the_content();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif; 

		endwhile; wp_reset_query(); ?>
		</div>
	</section>
	<?php endif; ?>

	<?php get_template_part("layouts/acf", "sections"); // ACF Sections ?>

<?php get_footer(); ?>

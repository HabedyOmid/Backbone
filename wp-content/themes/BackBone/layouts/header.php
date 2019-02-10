<?php if(get_field('banner_image') == TRUE) :  $banner_img = wp_get_attachment_url( get_post_thumbnail_id($post->ID) ); ?>
<header class="header" style="background-image: linear-gradient(to right, rgba(0,0,0,0.6), rgba(255,255,255,0.3)), url('<?php echo $banner_img; ?>');">
	<h1 class="header__title"><?php the_title(); ?></h1>
</header>
<?php endif; ?>



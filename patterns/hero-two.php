<?php
/**
 * Title: Hero block with two columns
 * Slug: greenshift/hero-two
 * Categories: greenshift-hero
 */
?>

<!-- wp:group {"align":"full","style":{"elements":{"link":{"color":{"text":"var:preset|color|basecolor"}}}},"backgroundColor":"contrastcolor","textColor":"basecolor","layout":{"inherit":true,"type":"constrained"}} -->
<div class="wp-block-group alignfull has-basecolor-color has-contrastcolor-background-color has-text-color has-background has-link-color"><!-- wp:media-text {"mediaPosition":"right","mediaId":4690,"mediaLink":"<?php echo esc_url( get_theme_file_uri( 'assets/img/white_1200_1200.webp' ) ) ;?>","mediaType":"image","mediaWidth":40} -->
<div class="wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile" style="grid-template-columns:auto 40%"><div class="wp-block-media-text__content"><!-- wp:heading {"style":{"typography":{"lineHeight":"1.2"},"spacing":{"margin":{"bottom":"30px","top":"30px"}}},"fontSize":"max-gigantic"} -->
<h2 class="has-max-gigantic-font-size" id="text-on-left-image-on-right" style="margin-top:30px;margin-bottom:30px;line-height:1.2">Lorem ipsum dolor sit amet, consectetur </h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"textColor":"lightgrey"} -->
<p class="has-lightgrey-color has-text-color">Lorem ipsum dolor sit amet, consectetur adipiscing vestibulum. Fringilla nec accumsan eget, facilisis mi justo, luctus pellentesque gravida vitae non diam accumsan posuere, venenatis mi turpis.</p>
<!-- /wp:paragraph -->

<!-- wp:buttons -->
<div class="wp-block-buttons"><!-- wp:button {"backgroundColor":"primary","textColor":"textonprimary","style":{"spacing":{"padding":{"top":"15px","right":"40px","bottom":"15px","left":"40px"}},"border":{"radius":"3px"}},"className":"is-style-cubebtndark"} -->
<div class="wp-block-button is-style-cubebtndark"><a class="wp-block-button__link has-textonprimary-color has-primary-background-color has-text-color has-background wp-element-button" style="border-radius:3px;padding-top:15px;padding-right:40px;padding-bottom:15px;padding-left:40px">Get Started</a></div>
<!-- /wp:button -->

<!-- wp:button {"backgroundColor":"white","textColor":"black","style":{"spacing":{"padding":{"top":"15px","bottom":"15px","left":"40px","right":"40px"}}},"className":"is-style-cubebtnwhite"} -->
<div class="wp-block-button is-style-cubebtnwhite"><a class="wp-block-button__link has-black-color has-white-background-color has-text-color has-background wp-element-button" style="padding-top:15px;padding-right:40px;padding-bottom:15px;padding-left:40px">Learn More</a></div>
<!-- /wp:button --></div>
<!-- /wp:buttons --></div><figure class="wp-block-media-text__media"><img src="<?php echo esc_url( get_theme_file_uri( 'assets/img/white_1200_1200.webp' ) ) ;?>" alt="<?php echo esc_attr__( 'Sample Image', 'greenshift' ) ;?>" class="wp-image-4690 size-full" /></figure></div>
<!-- /wp:media-text --></div>
<!-- /wp:group -->
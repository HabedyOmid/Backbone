<?php

/**
 * Title: Banner block
 * Slug: greenshift/general-banner
 * Categories: greenshift-general
 */
?>
<!-- wp:cover {"url":"<?php echo esc_url(get_template_directory_uri()) . '/assets/img/banner.webp'; ?>","id":7208,"dimRatio":0,"minHeight":100,"align":"wide","style":{"spacing":{"padding":{"bottom":"4vw","left":"4vw","top":"3vw","right":"4vw"}}}} -->
<div class="wp-block-cover alignwide" style="padding-top:3vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:100px"><span aria-hidden="true" class="wp-block-cover__background has-background-dim-0 has-background-dim"></span><img class="wp-block-cover__image-background wp-image-7208" alt="" src="<?php echo esc_url(get_template_directory_uri()) . '/assets/img/banner.webp'; ?>" data-object-fit="cover" />
    <div class="wp-block-cover__inner-container"><!-- wp:columns {"style":{"elements":{"link":{"color":{"text":"var:preset|color|white"}}}},"textColor":"white"} -->
        <div class="wp-block-columns has-white-color has-text-color has-link-color"><!-- wp:column {"width":"60%"} -->
            <div class="wp-block-column" style="flex-basis:60%"><!-- wp:paragraph {"style":{"spacing":{"margin":{"top":"0","right":"0","bottom":"var:preset|spacing|20","left":"0"}}},"textColor":"lightgrey","fontSize":"small"} -->
                <p class="has-lightgrey-color has-text-color has-small-font-size" style="margin-top:0;margin-right:0;margin-bottom:var(--wp--preset--spacing--20);margin-left:0">Build. Animate. Earn</p>
                <!-- /wp:paragraph -->

                <!-- wp:heading {"style":{"spacing":{"margin":{"top":"0","right":"0","bottom":"0","left":"0"}}},"fontSize":"x-large"} -->
                <h2 class="has-x-large-font-size" id="put-your-site-on-next-level-with-greenshift-plugin" style="margin-top:0;margin-right:0;margin-bottom:0;margin-left:0">Put Your Site on Next Level with Greenshift plugin</h2>
                <!-- /wp:heading -->

                <!-- wp:group {"style":{"spacing":{"padding":{"top":"0","right":"0","bottom":"0","left":"0"},"blockGap":"var:preset|spacing|40"}},"layout":{"type":"flex","flexWrap":"wrap"},"fontSize":"small"} -->
                <div class="wp-block-group has-small-font-size" style="padding-top:0;padding-right:0;padding-bottom:0;padding-left:0"><!-- wp:paragraph -->
                    <p>Premium Support</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>14 day money-back</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>Cancel any time</p>
                    <!-- /wp:paragraph -->
                </div>
                <!-- /wp:group -->
            </div>
            <!-- /wp:column -->

            <!-- wp:column {"verticalAlignment":"center","width":""} -->
            <div class="wp-block-column is-vertically-aligned-center"><!-- wp:buttons {"className":"gs-tablet-center","layout":{"type":"flex","justifyContent":"right"}} -->
                <div class="wp-block-buttons gs-tablet-center"><!-- wp:button {"gradient":"creative-btn","style":{"spacing":{"padding":{"right":"var:preset|spacing|70","left":"var:preset|spacing|70","top":"0.9rem","bottom":"0.9rem"}}},"className":"is-style-fill"} -->
                    <div class="wp-block-button is-style-fill"><a class="wp-block-button__link has-creative-btn-gradient-background has-background wp-element-button" href="#" style="padding-top:0.9rem;padding-right:var(--wp--preset--spacing--70);padding-bottom:0.9rem;padding-left:var(--wp--preset--spacing--70)" target="_blank" rel="noreferrer noopener">Check Now Blocks!</a></div>
                    <!-- /wp:button -->
                </div>
                <!-- /wp:buttons -->
            </div>
            <!-- /wp:column -->
        </div>
        <!-- /wp:columns -->
    </div>
</div>
<!-- /wp:cover -->
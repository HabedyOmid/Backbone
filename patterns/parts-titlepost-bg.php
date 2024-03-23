<?php
/**
 * Title: Post title area with Background
 * Slug: greenshift/parts-titlepost-bg
 * Categories: greenshift-parts
 * Block Types: core/template-part/titlepost
 */
?>
<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"55px","bottom":"0px"},"blockGap":"20px"}},"backgroundColor":"black","textColor":"white","layout":{"inherit":true,"type":"constrained"}} -->
<div class="wp-block-group alignfull has-white-color has-black-background-color has-text-color has-background" style="padding-top:55px;padding-bottom:0px"><!-- wp:post-terms {"term":"category","textAlign":"center","style":{"elements":{"link":{"color":{"text":"#ffe200"}}}},"className":"is-style-greenshift-tags-nounder","fontSize":"small"} /-->

<!-- wp:post-title {"textAlign":"center","level":1,"fontSize":"max-huge"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false,"justifyContent":"center"}} -->
<div class="wp-block-group"><!-- wp:post-author {"style":{"typography":{"fontStyle":"normal","fontWeight":"700"}},"fontSize":"small"} /-->

<!-- wp:paragraph {"textColor":"lightgrey","fontSize":"small"} -->
<p class="has-lightgrey-color has-text-color has-small-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"style":{"color":{"text":"#e9e9e9"}},"fontSize":"small"} /--></div>
<!-- /wp:group -->

<!-- wp:post-featured-image {"height":"450px","align":"wide","style":{"spacing":{"margin":{"top":"70px"}}},"className":"is-style-height230 is-style-gs-half-image-offset"} /--></div>
<!-- /wp:group -->
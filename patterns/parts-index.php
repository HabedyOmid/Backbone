<?php
/**
 * Title: Index page with featured section
 * Slug: greenshift/parts/parts-index
 * Categories: greenshift-parts
 */
?>
<!-- wp:group {"tagName":"main","style":{"spacing":{"blockGap":"0","margin":{"top":"0","bottom":"var:preset|spacing|60"}}},"layout":{"inherit":true,"type":"constrained"}} -->
<main class="wp-block-group" style="margin-top:0;margin-bottom:var(--wp--preset--spacing--60)"><!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"var:preset|spacing|60","right":"0","bottom":"var:preset|spacing|50","left":"0"}},"elements":{"link":{"color":{"text":"var:preset|color|contrastcolor"}}}},"backgroundColor":"basecolor","textColor":"contrastcolor","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignfull has-contrastcolor-color has-basecolor-background-color has-text-color has-background has-link-color" style="padding-top:var(--wp--preset--spacing--60);padding-right:0;padding-bottom:var(--wp--preset--spacing--50);padding-left:0"><!-- wp:heading {"textAlign":"center","level":1,"style":{"spacing":{"padding":{"top":"0","right":"0","bottom":"0","left":"0"}}},"className":"is-style-default","fontSize":"large"} -->
<h1 class="has-text-align-center is-style-default has-large-font-size" id="check-latest" style="padding-top:0;padding-right:0;padding-bottom:0;padding-left:0"><?php esc_html_e("Check latest", "greenshift");?></h1>
<!-- /wp:heading -->

<!-- wp:columns {"align":"wide"} -->
<div class="wp-block-columns alignwide"><!-- wp:column -->
<div class="wp-block-column"><!-- wp:query {"queryId":22,"query":{"perPage":"1","pages":"1","offset":0,"postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":true},"displayLayout":{"type":"list","columns":2},"align":"wide","className":"is-style-gs-createiveoverlay","layout":{"type":"default"}} -->
<div class="wp-block-query alignwide is-style-gs-createiveoverlay"><!-- wp:post-template -->
<!-- wp:cover {"useFeaturedImage":true,"minHeight":403,"minHeightUnit":"px","contentPosition":"bottom left","isDark":false,"style":{"color":{"duotone":["#000097","#ff4747"]}}} -->
<div class="wp-block-cover is-light has-custom-content-position is-position-bottom-left" style="min-height:403px"><span aria-hidden="true" class="wp-block-cover__background has-background-dim-100 has-background-dim"></span><div class="wp-block-cover__inner-container"><!-- wp:group {"style":{"spacing":{"blockGap":"10px","padding":{"top":"8px","right":"8px","bottom":"8px","left":"8px"}}}} -->
<div class="wp-block-group" style="padding-top:8px;padding-right:8px;padding-bottom:8px;padding-left:8px"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"elements":{"link":{"color":{"text":"#f7f5ff"}}},"typography":{"textTransform":"uppercase"}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"},"elements":{"link":{"color":{"text":"var:preset|color|textonprimary"}}}},"fontSize":"large"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-author {"showAvatar":false,"style":{"typography":{"fontStyle":"normal","fontWeight":"700"},"color":{"text":"#fcfcfc"}},"fontSize":"xsmall"} /-->

<!-- wp:paragraph {"fontSize":"xsmall"} -->
<p class="has-xsmall-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"style":{"color":{"text":"#c1cfdf"}},"fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group --></div></div>
<!-- /wp:cover -->
<!-- /wp:post-template --></div>
<!-- /wp:query --></div>
<!-- /wp:column -->

<!-- wp:column -->
<div class="wp-block-column"><!-- wp:query {"queryId":22,"query":{"perPage":"4","pages":"1","offset":"1","postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":true},"displayLayout":{"type":"flex","columns":2},"align":"wide","className":"is-style-gs-createiveoverlay"} -->
<div class="wp-block-query alignwide is-style-gs-createiveoverlay"><!-- wp:post-template -->
<!-- wp:cover {"useFeaturedImage":true,"dimRatio":50,"minHeight":190,"minHeightUnit":"px","contentPosition":"bottom left","style":{"color":{}}} -->
<div class="wp-block-cover has-custom-content-position is-position-bottom-left" style="min-height:190px"><span aria-hidden="true" class="wp-block-cover__background has-background-dim"></span><div class="wp-block-cover__inner-container"><!-- wp:group {"style":{"spacing":{"blockGap":"10px","padding":{"top":"8px","right":"8px","bottom":"8px","left":"8px"}}}} -->
<div class="wp-block-group" style="padding-top:8px;padding-right:8px;padding-bottom:8px;padding-left:8px"><!-- wp:post-title {"level":3,"isLink":true,"style":{"typography":{"lineHeight":"1.4"},"elements":{"link":{"color":{"text":"var:preset|color|textonprimary"}}}},"className":"is-style-text-clamp-two","fontSize":"subheading"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-date {"style":{"color":{"text":"#c1cfdf"}},"fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group --></div></div>
<!-- /wp:cover -->
<!-- /wp:post-template --></div>
<!-- /wp:query --></div>
<!-- /wp:column --></div>
<!-- /wp:columns --></div>
<!-- /wp:group --></main>
<!-- /wp:group -->

<!-- wp:group {"tagName":"main","style":{"spacing":{"padding":{"bottom":"var:preset|spacing|70","top":"var:preset|spacing|70"},"margin":{"top":"0","bottom":"0"}},"elements":{"link":{"color":{"text":"var:preset|color|basecolor"}}}},"backgroundColor":"contrastcolor","textColor":"basecolor","layout":{"inherit":true,"type":"constrained"}} -->
<main class="wp-block-group has-basecolor-color has-contrastcolor-background-color has-text-color has-background has-link-color" style="margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--70);padding-bottom:var(--wp--preset--spacing--70)"><!-- wp:query {"queryId":22,"query":{"perPage":9,"pages":0,"offset":"5","postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"exclude","inherit":true},"displayLayout":{"type":"flex","columns":3},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default"><!-- wp:post-template -->
<!-- wp:post-featured-image {"isLink":true,"height":"230px","className":"gs-hover-scale-img"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"20px"}}} -->
<div class="wp-block-group"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"elements":{"link":{"color":{"text":"var:preset|color|secondary"}}},"typography":{"fontStyle":"normal","fontWeight":"600"}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"}},"fontSize":"subheading"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-author {"showAvatar":false,"style":{"typography":{"fontStyle":"normal","fontWeight":"700"}},"fontSize":"xsmall"} /-->

<!-- wp:paragraph {"fontSize":"xsmall"} -->
<p class="has-xsmall-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"textColor":"lightgrey","fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group -->
<!-- /wp:post-template -->

<!-- wp:spacer {"height":"26px"} -->
<div style="height:26px" aria-hidden="true" class="wp-block-spacer"></div>
<!-- /wp:spacer -->

<!-- wp:query-pagination {"paginationArrow":"arrow","layout":{"type":"flex","justifyContent":"center"}} -->
<!-- wp:query-pagination-previous /-->

<!-- wp:query-pagination-numbers /-->

<!-- wp:query-pagination-next /-->
<!-- /wp:query-pagination --></div>
<!-- /wp:query --></main>
<!-- /wp:group -->
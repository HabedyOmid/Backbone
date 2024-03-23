<?php
/**
 * Title: Grid of posts with shadow
 * Slug: greenshift/query-shadowgrid
 * Categories: greenshift-query
 * Block Types: core/query
 */
?>
<!-- wp:group {"align":"wide","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignwide"><!-- wp:query {"queryId":55,"query":{"perPage":9,"pages":0,"offset":0,"postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":true},"displayLayout":{"type":"flex","columns":3},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default"><!-- wp:post-template -->
<!-- wp:post-featured-image {"isLink":true,"height":"230px","style":{"spacing":{"margin":{"bottom":"var:preset|spacing|50"}}},"className":"gs-hover-scale-img is-style-gs-shadowradius"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"20px"}}} -->
<div class="wp-block-group"><!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"}},"fontSize":"subheading"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"elements":{"link":{"color":{"text":"var:preset|color|textonbutton"}}},"typography":{"textTransform":"uppercase","fontSize":"12px"}},"className":"is-style-greenshiftquery-tags-nounder"} /-->

<!-- wp:post-date {"style":{"color":{"text":"#6f8099"},"typography":{"textTransform":"uppercase","fontSize":"12px"}}} /--></div>
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
<!-- /wp:query --></div>
<!-- /wp:group -->
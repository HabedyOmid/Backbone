<?php
/**
 * Title: Grid of posts with excerpt
 * Slug: greenshift/query-grid-excerpt
 * Categories: greenshift-query
 * Block Types: core/query
 */
?>
<!-- wp:group {"align":"wide","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignwide"><!-- wp:query {"queryId":22,"query":{"perPage":10,"pages":0,"offset":0,"postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":true},"align":"wide","className":"is-style-gs-brdnpaddradius"} -->
<div class="wp-block-query alignwide is-style-gs-brdnpaddradius"><!-- wp:post-template {"layout":{"type":"grid","columnCount":3}} -->
<!-- wp:post-featured-image {"isLink":true,"height":"230px","style":{"spacing":{"padding":{"top":"0","bottom":"0","left":"0","right":"0"},"margin":{"bottom":"0"}}},"className":"gs-hover-scale-img"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"10px","padding":{"top":"8px","right":"8px","bottom":"8px","left":"8px"}}}} -->
<div class="wp-block-group" style="padding-top:8px;padding-right:8px;padding-bottom:8px;padding-left:8px"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"spacing":{"margin":{"bottom":"0","top":"var:preset|spacing|20"}}},"className":"is-style-gs-tags-greybground","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"}},"fontSize":"subheading"} /-->

<!-- wp:post-excerpt {"excerptLength":11,"fontSize":"small"} /--></div>
<!-- /wp:group -->
<!-- /wp:post-template -->

<!-- wp:spacer {"height":"50px"} -->
<div style="height:50px" aria-hidden="true" class="wp-block-spacer"></div>
<!-- /wp:spacer -->

<!-- wp:query-pagination {"paginationArrow":"arrow","layout":{"type":"flex","justifyContent":"center"}} -->
<!-- wp:query-pagination-previous /-->

<!-- wp:query-pagination-numbers /-->

<!-- wp:query-pagination-next /-->
<!-- /wp:query-pagination --></div>
<!-- /wp:query --></div>
<!-- /wp:group -->
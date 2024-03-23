<?php
/**
 * Title: Comment Query
 * Slug: greenshift/parts-commentquery
 * Categories: greenshift-parts
 * Inserter: no
 */
?>
<!-- wp:comments {"className":"wp-block-comments-query-loop "} -->
<div class="wp-block-comments wp-block-comments-query-loop"><!-- wp:comments-title {"style":{"spacing":{"margin":{"bottom":"40px"}}}} /-->

<!-- wp:comment-template -->
<!-- wp:columns {"style":{"spacing":{"margin":{"bottom":"25px"}}}} -->
<div class="wp-block-columns" style="margin-bottom:25px"><!-- wp:column {"width":"40px"} -->
<div class="wp-block-column" style="flex-basis:40px"><!-- wp:avatar {"size":40,"style":{"border":{"radius":"20px"}}} /--></div>
<!-- /wp:column -->

<!-- wp:column {"style":{"spacing":{"blockGap":"2px"}}} -->
<div class="wp-block-column"><!-- wp:comment-author-name /-->

<!-- wp:group {"style":{"spacing":{"margin":{"top":"0px","bottom":"0px"},"blockGap":"10px"}},"className":"is-style-default","layout":{"type":"flex","verticalAlignment":"top"}} -->
<div class="wp-block-group is-style-default" style="margin-top:0px;margin-bottom:0px"><!-- wp:comment-date {"style":{"elements":{"link":{"color":{"text":"var:preset|color|lightgrey"}}}},"textColor":"lightgrey","fontSize":"xsmall"} /-->

<!-- wp:comment-edit-link {"style":{"elements":{"link":{"color":{"text":"var:preset|color|lightgrey"}}}},"fontSize":"xsmall"} /--></div>
<!-- /wp:group -->

<!-- wp:spacer {"height":"10px"} -->
<div style="height:10px" aria-hidden="true" class="wp-block-spacer"></div>
<!-- /wp:spacer -->

<!-- wp:comment-content /-->

<!-- wp:comment-reply-link {"style":{"elements":{"link":{"color":{"text":"var:preset|color|lightgrey"}}}},"fontSize":"xsmall"} /--></div>
<!-- /wp:column --></div>
<!-- /wp:columns -->
<!-- /wp:comment-template -->

<!-- wp:group {"style":{"spacing":{"margin":{"top":"var:preset|spacing|60","bottom":"var:preset|spacing|40"},"padding":{"bottom":"var:preset|spacing|30"}},"border":{"bottom":{"color":"var:preset|color|lightborder","width":"1px"}}},"className":"has-small-font-size"} -->
<div class="wp-block-group has-small-font-size" style="border-bottom-color:var(--wp--preset--color--lightborder);border-bottom-width:1px;margin-top:var(--wp--preset--spacing--60);margin-bottom:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--30)"><!-- wp:comments-pagination {"paginationArrow":"arrow","style":{"elements":{"link":{"color":{"text":"var:preset|color|lightgrey"}}}},"layout":{"type":"flex","justifyContent":"space-between"}} -->
<!-- wp:comments-pagination-previous /-->

<!-- wp:comments-pagination-numbers /-->

<!-- wp:comments-pagination-next /-->
<!-- /wp:comments-pagination --></div>
<!-- /wp:group -->

<!-- wp:post-comments-form /--></div>
<!-- /wp:comments -->
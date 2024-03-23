<?php
/**
 * Title: Post title area
 * Slug: greenshift/parts-titlepost
 * Categories: greenshift-parts
 * Block Types: core/template-part/titlepost
 */
?>
<!-- wp:group {"style":{"spacing":{"padding":{"top":"40px"}}},"layout":{"inherit":true,"type":"constrained"}} -->
<div class="wp-block-group" style="padding-top:40px"><!-- wp:post-title {"level":1,"fontSize":"max-huge"} /-->

<!-- wp:group {"className":"post-meta has-small-font-size","layout":{"type":"flex"}} -->
<div class="wp-block-group post-meta has-small-font-size"><!-- wp:post-date /-->

<!-- wp:paragraph -->
<p>•</p>
<!-- /wp:paragraph -->

<!-- wp:post-author /-->

<!-- wp:paragraph -->
<p>•</p>
<!-- /wp:paragraph -->

<!-- wp:post-terms {"term":"category","className":"is-style-greenshift-tags-color"} /--></div>
<!-- /wp:group -->

<!-- wp:post-featured-image {"height":"600px","align":"wide","className":"is-style-height230"} /-->
</div>
<!-- /wp:group -->
<?php
/**
 * Title: List of 3 grid items
 * Slug: greenshift/query-listgrid
 * Categories: greenshift-query
 * Block Types: core/query
 */
?>
<!-- wp:group {"align":"wide","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignwide">
<!-- wp:query {"queryId":21,"query":{"perPage":3,"pages":0,"offset":"1","postType":"post","categoryIds":[],"tagIds":[],"order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":false},"displayLayout":{"type":"flex","columns":3},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default">
    <!-- wp:separator {"className":"is-style-wide"} -->
    <hr class="wp-block-separator is-style-wide" />
    <!-- /wp:separator -->

    <!-- wp:post-template -->
    <!-- wp:group {"style":{"spacing":{"blockGap":"20px"}}} -->
    <div class="wp-block-group">
        <!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
        <div class="wp-block-group">
            <!-- wp:post-terms {"term":"category","separator":"  ","style":{"elements":{"link":{"color":{"text":"var:preset|color|secondary"}}},"typography":{"textTransform":"uppercase","fontSize":"0.8rem"}},"className":"is-style-greenshift-tags-nounder"} /-->

            <!-- wp:paragraph {"textColor":"lightgrey","fontSize":"xsmall"} -->
            <p class="has-lightgrey-color has-text-color has-xsmall-font-size">|</p>
            <!-- /wp:paragraph -->

            <!-- wp:post-date {"textColor":"lightgrey","fontSize":"xsmall"} /-->
        </div>
        <!-- /wp:group -->

        <!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"}},"fontSize":"medium"} /-->

        <!-- wp:post-author {"showAvatar":false,"style":{"typography":{"fontStyle":"normal","fontWeight":"700"}},"fontSize":"xsmall"} /-->
    </div>
    <!-- /wp:group -->
    <!-- /wp:post-template -->

    <!-- wp:separator {"className":"is-style-wide"} -->
    <hr class="wp-block-separator is-style-wide" />
    <!-- /wp:separator -->
</div>
<!-- /wp:query -->
</div>
<!-- /wp:group -->
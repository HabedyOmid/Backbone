<?php

/**
 * Title: Header with left menu and button
 * Slug: greenshift/header-withbutton
 * Categories: greenshift-header
 * Block Types: core/template-part/header
 */
?>
<!-- wp:group {"align":"full","style":{"spacing":{"margin":{"top":"0","bottom":"0"},"padding":{"top":"20px","bottom":"20px"}},"border":{"bottom":{"color":"#00000012","width":"1px"}}},"layout":{"inherit":true,"type":"constrained"}} -->
<div class="wp-block-group alignfull" style="border-bottom-color:#00000012;border-bottom-width:1px;margin-top:0;margin-bottom:0;padding-top:20px;padding-bottom:20px"><!-- wp:group {"align":"wide","style":{"spacing":{"blockGap":"var:preset|spacing|20"}},"layout":{"type":"flex","justifyContent":"space-between"}} -->
    <div class="wp-block-group alignwide">
        <!-- wp:group {"style":{"spacing":{"blockGap":"var:preset|spacing|50"}},"layout":{"type":"flex","flexWrap":"nowrap"}} -->
        <div class="wp-block-group">
            <!-- wp:site-logo /-->
            <!-- wp:navigation {"layout":{"type":"flex","orientation":"horizontal"}} /-->
        </div>
        <!-- /wp:group -->

        <!-- wp:buttons -->
        <div class="wp-block-buttons"><!-- wp:button {"style":{"spacing":{"padding":{"left":"var:preset|spacing|40","right":"var:preset|spacing|40","top":"var:preset|spacing|20","bottom":"var:preset|spacing|20"}}},"className":"is-style-sliding-button"} -->
            <div class="wp-block-button is-style-sliding-button"><a class="wp-block-button__link wp-element-button" style="padding-top:var(--wp--preset--spacing--20);padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--20);padding-left:var(--wp--preset--spacing--40)">Download</a></div>
            <!-- /wp:button -->
        </div>
        <!-- /wp:buttons -->
    </div>
    <!-- /wp:group -->
</div>
<!-- /wp:group -->
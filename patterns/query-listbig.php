<?php
/**
 * Title: List with big images
 * Slug: greenshift/query-listbig
 * Categories: greenshift-query
 * Block Types: core/query
 */
?>
<!-- wp:group {"align":"wide","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignwide">
    <!-- wp:query {"queryId":10,"query":{"perPage":3,"pages":0,"offset":0,"postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":true},"displayLayout":{"type":"list"}} -->
    <div class="wp-block-query">
        <!-- wp:post-template -->
        <!-- wp:columns {"align":"wide","style":{"spacing":{"blockGap":"0px"}},"className":"gspbquery-animate gs-move-up"} -->
        <div class="wp-block-columns alignwide gspbquery-animate gs-move-up">
            <!-- wp:column {"width":"55%"} -->
            <div class="wp-block-column" style="flex-basis:55%">
                <!-- wp:post-featured-image {"isLink":true,"height":"300px","style":{"spacing":{"margin":{"top":"0px","right":"0px","bottom":"0px","left":"0px"}}},"className":"gs-hover-scale-img"} /-->
            </div>
            <!-- /wp:column -->

            <!-- wp:column {"verticalAlignment":"center","width":"45%","backgroundColor":"background","className":"is-style-default"} -->
            <div class="wp-block-column is-vertically-aligned-center is-style-default has-background-background-color has-background" style="flex-basis:45%">
                <!-- wp:group {"style":{"spacing":{"padding":{"top":"10%","right":"10%","bottom":"10%","left":"10%"}}},"className":"gs-mobile-paddingdisable"} -->
                <div class="wp-block-group gs-mobile-paddingdisable" style="padding-top:10%;padding-right:10%;padding-bottom:10%;padding-left:10%">
                    <!-- wp:group {"style":{"spacing":{"blockGap":"10px"}},"layout":{"type":"flex","allowOrientation":false}} -->
                    <div class="wp-block-group">
                        <!-- wp:post-terms {"term":"category","separator":"  ","style":{"elements":{"link":{"color":{"text":"#2184f9"}}},"typography":{"textTransform":"uppercase","fontSize":"0.8rem"}},"className":"is-style-greenshiftquery-tags-nounder"} /-->

                        <!-- wp:paragraph {"style":{"typography":{"fontSize":"14px"},"color":{"text":"#bfbfbf"}},"className":"is-style-no-margin"} -->
                        <p class="is-style-no-margin has-text-color" style="color:#bfbfbf;font-size:14px">|</p>
                        <!-- /wp:paragraph -->

                        <!-- wp:post-author {"showAvatar":false,"style":{"typography":{"fontSize":"0.8rem"}}} /-->
                    </div>
                    <!-- /wp:group -->

                    <!-- wp:post-title {"isLink":true,"style":{"spacing":{"margin":{"top":"1rem","bottom":"0.81rem"}},"typography":{"fontSize":"22px"}}} /-->

                    <!-- wp:post-date {"style":{"color":{"text":"#bfbfbf"}},"fontSize":"small"} /-->
                </div>
                <!-- /wp:group -->
            </div>
            <!-- /wp:column -->
        </div>
        <!-- /wp:columns -->
        <!-- /wp:post-template -->

        <!-- wp:spacer {"height":"40px"} -->
            <div style="height:40px" aria-hidden="true" class="wp-block-spacer"></div>
        <!-- /wp:spacer -->

        <!-- wp:query-pagination {"paginationArrow":"arrow","layout":{"type":"flex","justifyContent":"center","orientation":"horizontal"}} -->
        <!-- wp:query-pagination-previous /-->

        <!-- wp:query-pagination-numbers /-->

        <!-- wp:query-pagination-next /-->
        <!-- /wp:query-pagination -->
    </div>
    <!-- /wp:query -->
</div>
<!-- /wp:group -->
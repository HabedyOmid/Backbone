<?php
/**
 * Title: Index page
 * Slug: greenshift/parts-indextext
 * Categories: greenshift-parts
 */
?>
<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"var:preset|spacing|70","bottom":"var:preset|spacing|60","left":"var:preset|spacing|50","right":"var:preset|spacing|50"},"margin":{"bottom":"0","top":"0"}},"elements":{"link":{"color":{"text":"var:preset|color|textonprimary"}}}},"backgroundColor":"primary","textColor":"textonprimary","layout":{"type":"constrained","wideSize":"950px"}} -->
<div class="wp-block-group alignfull has-textonprimary-color has-primary-background-color has-text-color has-background has-link-color" style="margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--70);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--50)"><!-- wp:heading {"textAlign":"center","level":1,"style":{"spacing":{"margin":{"top":"0","right":"0","bottom":"0","left":"0"}}},"fontSize":"max-huge"} -->
<h1 class="has-text-align-center has-max-huge-font-size" id="the-latest-items" style="margin-top:0;margin-right:0;margin-bottom:0;margin-left:0"><?php esc_html_e( 'The latest items', 'greenshift' );?></h1>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center"} -->
<p class="has-text-align-center"><?php esc_html_e( 'Find our latest news, tutorials, knowledge database case studies and videos', 'greenshift' );?></p>
<!-- /wp:paragraph -->

<!-- wp:separator {"align":"wide","style":{"spacing":{"margin":{"bottom":"var:preset|spacing|70","top":"var:preset|spacing|80"}}},"className":"is-style-wide"} -->
<hr class="wp-block-separator alignwide has-alpha-channel-opacity is-style-wide" style="margin-top:var(--wp--preset--spacing--80);margin-bottom:var(--wp--preset--spacing--70)"/>
<!-- /wp:separator -->

<!-- wp:columns {"align":"wide","style":{"spacing":{"padding":{"top":"0","right":"0","bottom":"0","left":"0"},"blockGap":{"top":"7vw","left":"7vw"}},"elements":{"link":{"color":{"text":"var:preset|color|textonprimary"}}}},"textColor":"textonprimary"} -->
<div class="wp-block-columns alignwide has-textonprimary-color has-text-color has-link-color" style="padding-top:0;padding-right:0;padding-bottom:0;padding-left:0"><!-- wp:column -->
<div class="wp-block-column"><!-- wp:query {"queryId":22,"query":{"perPage":"1","pages":0,"offset":"0","postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":false},"displayLayout":{"type":"list","columns":2},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default"><!-- wp:post-template -->
<!-- wp:group {"style":{"spacing":{"blockGap":"15px","padding":{"top":"0","right":"0px","bottom":"var:preset|spacing|60","left":"0"}}}} -->
<div class="wp-block-group" style="padding-top:0;padding-right:0px;padding-bottom:var(--wp--preset--spacing--60);padding-left:0"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"typography":{"textTransform":"uppercase","fontStyle":"normal","fontWeight":"600"}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"}},"className":"is-style-text-clamp-two","fontSize":"x-large"} /-->

<!-- wp:post-excerpt {"className":"is-style-text-clamp-three"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-author {"avatarSize":24,"fontSize":"xsmall"} /-->

<!-- wp:paragraph {"fontSize":"xsmall"} -->
<p class="has-xsmall-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group -->
<!-- /wp:post-template --></div>
<!-- /wp:query --></div>
<!-- /wp:column -->

<!-- wp:column -->
<div class="wp-block-column"><!-- wp:query {"queryId":22,"query":{"perPage":"1","pages":0,"offset":"1","postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":false},"displayLayout":{"type":"list","columns":2},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default"><!-- wp:post-template -->
<!-- wp:group {"style":{"spacing":{"blockGap":"15px","padding":{"top":"0","right":"0px","bottom":"var:preset|spacing|60","left":"0"}},"elements":{"link":{"color":{"text":"var:preset|color|contrastcolor"}}}},"textColor":"contrastcolor"} -->
<div class="wp-block-group has-contrastcolor-color has-text-color has-link-color" style="padding-top:0;padding-right:0px;padding-bottom:var(--wp--preset--spacing--60);padding-left:0"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"typography":{"textTransform":"uppercase","fontStyle":"normal","fontWeight":"600"}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"},"elements":{"link":{"color":{"text":"var:preset|color|contrastcolor"}}}},"className":"is-style-text-clamp-two","fontSize":"x-large"} /-->

<!-- wp:post-excerpt {"className":"is-style-text-clamp-three"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-author {"avatarSize":24,"fontSize":"xsmall"} /-->

<!-- wp:paragraph {"fontSize":"xsmall"} -->
<p class="has-xsmall-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group -->
<!-- /wp:post-template --></div>
<!-- /wp:query --></div>
<!-- /wp:column --></div>
<!-- /wp:columns --></div>
<!-- /wp:group -->

<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"bottom":"var:preset|spacing|70","top":"var:preset|spacing|70","right":"var:preset|spacing|50","left":"var:preset|spacing|50"}}},"layout":{"type":"constrained","wideSize":"950px"}} -->
<div class="wp-block-group alignfull" style="padding-top:var(--wp--preset--spacing--70);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--70);padding-left:var(--wp--preset--spacing--50)"><!-- wp:columns {"align":"wide","style":{"spacing":{"padding":{"top":"0","right":"0","bottom":"0","left":"0"},"blockGap":{"top":"7vw","left":"7vw"}}}} -->
<div class="wp-block-columns alignwide" style="padding-top:0;padding-right:0;padding-bottom:0;padding-left:0"><!-- wp:column -->
<div class="wp-block-column"><!-- wp:query {"queryId":22,"query":{"perPage":"3","pages":0,"offset":"2","postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":false},"displayLayout":{"type":"list","columns":2},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default"><!-- wp:post-template -->
<!-- wp:group {"style":{"spacing":{"blockGap":"10px","padding":{"top":"0","right":"0px","bottom":"var:preset|spacing|60","left":"0"}}},"textColor":"lightgrey"} -->
<div class="wp-block-group has-lightgrey-color has-text-color" style="padding-top:0;padding-right:0px;padding-bottom:var(--wp--preset--spacing--60);padding-left:0"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"typography":{"textTransform":"uppercase","fontStyle":"normal","fontWeight":"600"}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"},"elements":{"link":{"color":{"text":"var:preset|color|primary"}}}},"className":"is-style-text-clamp-two","fontSize":"x-large"} /-->

<!-- wp:post-excerpt {"className":"is-style-text-clamp-three"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-author {"avatarSize":24,"fontSize":"xsmall"} /-->

<!-- wp:paragraph {"fontSize":"xsmall"} -->
<p class="has-xsmall-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group -->
<!-- /wp:post-template --></div>
<!-- /wp:query --></div>
<!-- /wp:column -->

<!-- wp:column -->
<div class="wp-block-column"><!-- wp:query {"queryId":22,"query":{"perPage":"2","pages":0,"offset":"5","postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":false},"displayLayout":{"type":"list","columns":2},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default"><!-- wp:post-template -->
<!-- wp:group {"style":{"spacing":{"blockGap":"10px","padding":{"top":"0","right":"0px","bottom":"var:preset|spacing|60","left":"0"}}},"textColor":"lightgrey"} -->
<div class="wp-block-group has-lightgrey-color has-text-color" style="padding-top:0;padding-right:0px;padding-bottom:var(--wp--preset--spacing--60);padding-left:0"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"typography":{"textTransform":"uppercase","fontStyle":"normal","fontWeight":"600"}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"},"elements":{"link":{"color":{"text":"var:preset|color|primary"}}}},"className":"is-style-text-clamp-two","fontSize":"x-large"} /-->

<!-- wp:post-excerpt {"className":"is-style-text-clamp-three"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-author {"avatarSize":24,"fontSize":"xsmall"} /-->

<!-- wp:paragraph {"fontSize":"xsmall"} -->
<p class="has-xsmall-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group -->
<!-- /wp:post-template --></div>
<!-- /wp:query -->

<!-- wp:group {"align":"wide","style":{"spacing":{"padding":{"top":"var:preset|spacing|50","right":"var:preset|spacing|60","bottom":"0","left":"var:preset|spacing|60"}}},"backgroundColor":"tagcolor","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignwide has-tagcolor-background-color has-background" style="padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--60);padding-bottom:0;padding-left:var(--wp--preset--spacing--60)"><!-- wp:query {"queryId":22,"query":{"perPage":"1","pages":0,"offset":"7","postType":"post","order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":false},"displayLayout":{"type":"list","columns":2},"align":"wide","className":"is-style-default"} -->
<div class="wp-block-query alignwide is-style-default"><!-- wp:post-template -->
<!-- wp:group {"style":{"spacing":{"blockGap":"10px","padding":{"top":"0","right":"0px","bottom":"var:preset|spacing|60","left":"0"}},"elements":{"link":{"color":{"text":"var:preset|color|basecolor"}}}},"textColor":"lightgrey"} -->
<div class="wp-block-group has-lightgrey-color has-text-color has-link-color" style="padding-top:0;padding-right:0px;padding-bottom:var(--wp--preset--spacing--60);padding-left:0"><!-- wp:post-terms {"term":"category","separator":"  ","style":{"typography":{"textTransform":"uppercase","fontStyle":"normal","fontWeight":"600"}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

<!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"},"elements":{"link":{"color":{"text":"var:preset|color|primary"}}}},"className":"is-style-text-clamp-two","fontSize":"x-large"} /-->

<!-- wp:post-excerpt {"className":"is-style-text-clamp-three"} /-->

<!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
<div class="wp-block-group"><!-- wp:post-author {"avatarSize":24,"fontSize":"xsmall"} /-->

<!-- wp:paragraph {"fontSize":"xsmall"} -->
<p class="has-xsmall-font-size">/</p>
<!-- /wp:paragraph -->

<!-- wp:post-date {"fontSize":"xsmall"} /--></div>
<!-- /wp:group --></div>
<!-- /wp:group -->
<!-- /wp:post-template --></div>
<!-- /wp:query --></div>
<!-- /wp:group --></div>
<!-- /wp:column --></div>
<!-- /wp:columns -->

<!-- wp:separator {"style":{"spacing":{"margin":{"top":"var:preset|spacing|70","bottom":"var:preset|spacing|70"}}},"className":"is-style-wide"} -->
<hr class="wp-block-separator has-alpha-channel-opacity is-style-wide" style="margin-top:var(--wp--preset--spacing--70);margin-bottom:var(--wp--preset--spacing--70)"/>
<!-- /wp:separator -->

<!-- wp:buttons {"align":"wide","layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons alignwide"><!-- wp:button {"width":75,"className":"is-style-fill"} -->
<div class="wp-block-button has-custom-width wp-block-button__width-75 is-style-fill"><a class="wp-block-button__link wp-element-button" href="<?php echo get_post_type_archive_link('post');?>"><?php esc_html_e( 'Check all posts', 'greenshift' );?></a></div>
<!-- /wp:button --></div>
<!-- /wp:buttons -->
</div>
<!-- /wp:group -->
<?php
/**
 * Title: Simple Header
 * Slug: greenshift/header-simple
 * Categories: greenshift-header
 * Block Types: core/template-part/header
 */
?>

<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"20px","bottom":"20px"},"margin":{"top":"0","bottom":"0"}},"border":{"bottom":{"color":"#00000012","width":"1px"}}},"layout":{"inherit":true,"type":"constrained"}} -->
<div class="wp-block-group alignfull" style="border-bottom-color:#00000012;border-bottom-width:1px;margin-top:0;margin-bottom:0;padding-top:20px;padding-bottom:20px"><!-- wp:group {"align":"wide","layout":{"type":"flex","justifyContent":"space-between"}} -->
<div class="wp-block-group alignwide">
<!-- wp:site-logo /-->

<!-- wp:navigation {"layout":{"type":"flex","orientation":"horizontal"}} -->
<!-- wp:navigation-link {"label":"Menu Item","url":"#","kind":"custom","isTopLevelLink":true} /-->

<!-- wp:navigation-submenu {"label":"Menu dropdown","url":"#","kind":"custom","isTopLevelItem":true} -->
<!-- wp:navigation-link {"label":"First item","url":"#","kind":"custom","isTopLevelLink":false} /-->

<!-- wp:navigation-link {"label":"Second item","url":"#","kind":"custom","isTopLevelLink":false} /-->
<!-- /wp:navigation-submenu -->

<!-- wp:navigation-submenu {"label":"Mega dropdown","url":"#","kind":"custom","isTopLevelItem":true,"className":"is-style-mega-menu-left"} -->
<!-- wp:navigation-submenu {"label":"Menu heading","url":"#","kind":"custom","isTopLevelItem":false} -->
<!-- wp:navigation-link {"label":"First item","url":"#","kind":"custom","isTopLevelLink":false} /-->

<!-- wp:navigation-link {"label":"Second item","url":"#","kind":"custom","isTopLevelLink":false} /-->
<!-- /wp:navigation-submenu -->

<!-- wp:navigation-submenu {"label":"Menu heading","url":"#","kind":"custom","isTopLevelItem":false} -->
<!-- wp:navigation-link {"label":"First item","url":"#","kind":"custom","isTopLevelLink":false} /-->

<!-- wp:navigation-link {"label":"Second item","url":"#","kind":"custom","isTopLevelLink":false} /-->
<!-- /wp:navigation-submenu -->
<!-- /wp:navigation-submenu -->
<!-- /wp:navigation --></div>
<!-- /wp:group --></div>
<!-- /wp:group -->
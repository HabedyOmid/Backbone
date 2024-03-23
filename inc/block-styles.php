<?php

/**
 * This file adds block styles to the Greenshift theme for WordPress.
 *
 * @package Greenshift
 * @license GNU General Public License v2 or later
 * @link    https://greenshiftwp.com/
 */

 
//Polyfill for str_contains
if (!function_exists('str_contains')) {
    function str_contains ($haystack, $needle)
    {
        return empty($needle) || strpos($haystack, $needle) !== false;
    }
}

// Add Buttons
register_block_style(
	'core/button',
	array(
		'name'  => 'sliding-button',
		'label' => __('Sliding Gradient', 'greenshift'),
	)
);
register_block_style(
	'core/button',
	array(
		'name'  => 'secondary-button',
		'label' => __('Secondary button', 'greenshift'),
	)
);
register_block_style(
	'core/button',
	array(
		'name'  => 'cubebtnwhite',
		'label' => __('3d Button light', 'greenshift'),
	)
);
register_block_style(
	'core/button',
	array(
		'name'  => 'cubebtndark',
		'label' => __('3d Button dark', 'greenshift'),
	)
);

register_block_style(
	'core/button',
	array(
		'name'  => 'systemlight',
		'label' => __('System light', 'greenshift'),
	)
);
register_block_style(
	'core/button',
	array(
		'name'  => 'systemdark',
		'label' => __('System dark', 'greenshift'),
	)
);

register_block_style(
	'core/list',
	array(
		'name'  => 'nounderline',
		'label' => __('Unstyled view', 'greenshift'),
	)
);
register_block_style(
	'core/cover',
	array(
		'name'  => 'containbg',
		'label' => __('Full background', 'greenshift'),
	)
);
register_block_style(
	'core/cover',
	array(
		'name'  => 'blurbg',
		'label' => __('Blur background', 'greenshift'),
	)
);

// Add navigation styles: Fill, Outline.

register_block_style(
	'core/navigation-link',
	array(
		'name'  => 'accentbutton',
		'label' => __('Accent Button', 'greenshift'),
	)
);
register_block_style(
	'core/navigation-link',
	array(
		'name'  => 'primarybtn',
		'label' => __('Primary Color Button', 'greenshift'),
	)
);
register_block_style(
	'core/navigation-link',
	array(
		'name'  => 'secondarybtn',
		'label' => __('Secondary Color Button', 'greenshift'),
	)
);
register_block_style(
	'core/navigation-link',
	array(
		'name'  => 'cubeprimarybtn',
		'label' => __('Primary 3d Button', 'greenshift'),
	)
);

register_block_style(
	'core/group',
	array(
		'name'  => 'no-margin',
		'label' => __('No Margin', 'greenshift'),
	)
);
register_block_style(
	'core/post-navigation-link',
	array(
		'name'  => 'hovershadow',
		'label' => __('Shadow on hover', 'greenshift'),
	)
);

// Add image styles: Margin.
register_block_style(
	'core/image',
	array(
		'name'  => 'no-margin',
		'label' => __('No Margin', 'greenshift'),
	)
);
register_block_style(
	'core/post-featured-image',
	array(
		'name'  => 'gs-half-image-offset',
		'label' => __('Half negative offset', 'greenshift'),
	)
);
register_block_style(
	'core/post-featured-image',
	array(
		'name'  => 'gs-shadowradius',
		'label' => __('Shadow radius', 'greenshift'),
	)
);
// Add paragraph styles:

register_block_style(
	'core/paragraph',
	array(
		'name'  => 'gradientmask',
		'label' => __('Gradient mask', 'greenshift'),
	)
);

register_block_style(
	'core/heading',
	array(
		'name'  => 'gradientmask',
		'label' => __('Gradient mask', 'greenshift'),
	)
);



register_block_style(
	'core/post-terms',
	array(
		'name'  => 'greenshift-tags-color',
		'label' => __('Colored tags', 'greenshift'),
	)
);
register_block_style(
	'core/post-terms',
	array(
		'name'  => 'gs-tags-rounded',
		'label' => __('Rounded border', 'greenshift'),
	)
);
register_block_style(
	'core/post-terms',
	array(
		'name'  => 'gs-tags-greybground',
		'label' => __('Rounded grey', 'greenshift'),
	)
);
register_block_style(
	'core/post-terms',
	array(
		'name'  => 'greenshift-tags-nounder',
		'label' => __('Underline on hover', 'greenshift'),
	)
);
register_block_style(
	'core/categories',
	array(
		'name'  => 'listcategories',
		'label' => __('Inline List', 'greenshift'),
	)
);
register_block_style(
	'woocommerce/product-categories',
	array(
		'name'  => 'listcategories',
		'label' => __('Inline List', 'greenshift'),
	)
);

register_block_style(
	'core/search',
	array(
		'name'  => 'floating-white-search',
		'label' => __('Floating search bar on click', 'greenshift'),
	)
);

register_block_style(
	'core/search',
	array(
		'name'  => 'header-search',
		'label' => __('Header search', 'greenshift'),
	)
);

register_block_style('core/query', [
	'name' => 'gs-creativeoverlay',
	'label' => __('Creative overlay', 'greenshift'),
]);
register_block_style('core/query', [
	'name' => 'gs-brdnpaddradius',
	'label' => __('Rounded border box', 'greenshift'),
]);


register_block_style(
	'core/post-excerpt',
	array(
		'name'  => 'text-clamp-two',
		'label' => __('Show two lines', 'greenshift'),
	)
);
register_block_style(
	'core/post-excerpt',
	array(
		'name'  => 'text-clamp-three',
		'label' => __('Show three lines', 'greenshift'),
	)
);
register_block_style(
	'core/post-title',
	array(
		'name'  => 'text-clamp-two',
		'label' => __('Show two lines', 'greenshift'),
	)
);
register_block_style(
	'core/post-title',
	array(
		'name'  => 'text-clamp-three',
		'label' => __('Show three lines', 'greenshift'),
	)
);
register_block_style(
	'core/navigation-submenu',
	array(
		'name'  => 'mega-menu-right',
		'label' => __('Mega columned menu', 'greenshift'),
	)
);
register_block_style(
	'core/navigation-submenu',
	array(
		'name'  => 'mega-menu-left',
		'label' => __('Mega menu Open on left', 'greenshift'),
	)
);
register_block_style(
	'woocommerce/product-search',
	array(
		'name'  => 'theme-search-main',
		'label' => __('Theme search style', 'greenshift'),
	)
);
register_block_style(
	'woocommerce/product-search',
	array(
		'name'  => 'theme-search-round',
		'label' => __('Theme search with round corners', 'greenshift'),
	)
);
register_block_style(
	'core/site-logo',
	array(
		'name'  => 'hideontabletdown',
		'label' => __('Hide on mobile and tablets', 'greenshift'),
	)
);
register_block_style(
	'core/site-tagline',
	array(
		'name'  => 'hideontabletdown',
		'label' => __('Hide on mobile and tablets', 'greenshift'),
	)
);
register_block_style(
	'core/site-title',
	array(
		'name'  => 'hideontabletdown',
		'label' => __('Hide on mobile and tablets', 'greenshift'),
	)
);

register_block_style(
	'core/column',
	array(
		'name'  => 'softborder',
		'label' => __('Soft Border radius', 'greenshift'),
	)
);

//Include conditional assets
add_filter('render_block', 'greenshift_theme_conditional_assets', 10, 2);
function greenshift_theme_conditional_assets($html, $block)
{
	$block_style = '';

	if(!is_admin()){//prevent loading conditional assets in admin
		//We use checking by class name until WordPress will have proper inline style registration for block styles
		if (isset($block['blockName'])) {
            $blockname = $block['blockName'];
			if (!empty($block['attrs']['className'])) {
				if ($blockname == 'core/button') {
					if (str_contains($block['attrs']['className'], 'is-style-sliding-button') !== false) {
						$block_style .= '.wp-block-button.is-style-sliding-button .wp-block-button__link {background: var(--wp--preset--gradient--creative-btn);color: var(--wp--preset--color--textonprimary);background-size: 200% 200%;}
						.wp-block-button.is-style-sliding-button .wp-block-button__link:focus,.wp-block-button.is-style-sliding-button .wp-block-button__link:hover {    background-position: 100% 0;background: var(--wp--preset--gradient--creative-btn);color: var(--wp--preset--color--textonprimary);}';
					}
                    else if (str_contains($block['attrs']['className'], 'is-style-secondary-button') !== false) {
						$block_style .= '.wp-block-button.is-style-secondary-button .wp-block-button__link {background: var(--wp--preset--color--button);color: var(--wp--preset--color--textonbutton);}
						.wp-block-button.is-style-secondary-button .wp-block-button__link:focus,.wp-block-button.is-style-secondary-button .wp-block-button__link:hover {    background: var(--wp--preset--color--textonbutton);color: var(--wp--preset--color--button);}';
					}
                    if (str_contains($block['attrs']['className'], 'is-style-cubebtnwhite') !== false) {
						$block_style .= '.is-style-cubebtnwhite .wp-block-button__link{border:none !important; box-shadow: 0px 2px 4px rgb(45 35 66 / 10%), 0px 7px 13px -3px rgb(45 35 66 / 30%), inset 0px -3px 0px #d6d6e7}.is-style-cubebtnwhite .wp-block-button__link:hover{transform: translateY(-2px);}.is-style-cubebtnwhite .wp-block-button__link:active{transform: translateY(2px);box-shadow: 0px 2px 2px rgb(45 35 66 / 15%)}';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-cubebtndark') !== false) {
						$block_style .= '.is-style-cubebtndark .wp-block-button__link{border:none !important;box-shadow: 0px 2px 4px rgb(45 35 66 / 20%), 0px 7px 13px -3px rgb(45 35 66 / 30%), inset 0px -3px 0px rgb(58 65 111 / 50%);
							text-shadow: 0 1px 0 rgb(0 0 0 / 40%);}.is-style-cubebtndark .wp-block-button__link:hover{transform: translateY(-2px);}.is-style-cubebtndark .wp-block-button__link:active{transform: translateY(2px);box-shadow: 0px 2px 2px rgb(45 35 66 / 15%)}';
					}
                    else if (str_contains($block['attrs']['className'], 'is-style-systemdark') !== false) {
						$block_style .= '.is-style-systemdark .wp-block-button__link{background: linear-gradient(180deg, rgba(255, 255, 255, 0.24) 0%, rgba(255, 255, 255, 0) 50%), #141414 !important; color: #ffffff !important;box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.64), 0px 0px 0px 1px #000000; }';
					}
                    else if (str_contains($block['attrs']['className'], 'is-style-systemlight') !== false) {
						$block_style .= '.is-style-systemlight .wp-block-button__link{box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.06), 0px 0px 0px 1px rgba(0, 0, 0, 0.1); background: #fff !important; color: #000 !important}';
					}
				}
                else if ($blockname == 'core/list') {
					if (str_contains($block['attrs']['className'], 'is-style-nounderline') !== false) {
						$block_style .= 'ul.is-style-nounderline {margin:0; padding:0;list-style:none}ul.is-style-nounderline a{text-decoration:none}ul.is-style-nounderline li{list-style:none}';
					}
				}
                else if ($blockname == 'core/cover') {
					if (str_contains($block['attrs']['className'], 'is-style-containbg') !== false) {
						$block_style .= '.is-style-containbg > .wp-block-cover__image-background, .is-style-containbg > video.wp-block-cover__video-background{-o-object-fit: contain !important;object-fit: contain !important;}';
					}
                    if (str_contains($block['attrs']['className'], 'is-style-blurbg') !== false) {
						$block_style .= '.is-style-blurbg > .wp-block-cover__image-background, .is-style-blurbg > video.wp-block-cover__video-background{filter: blur(10px);-webkit-filter: blur(10px);}';
					}
                    if (str_contains($block['attrs']['className'], 'is-style-color-inherit') !== false) {
						$block_style .= '.is-style-color-inherit, .is-style-color-inherit > .wp-block-cover__inner-container{color:inherit !important}';
					}
				}
                else if ($blockname == 'core/navigation-link') {
					if (str_contains($block['attrs']['className'], 'is-style-accentbutton') !== false) {
						$block_style .= '.wp-block-navigation-item.is-style-accentbutton a{background-color:var(--wp--preset--color--button)!important;color:var(--wp--preset--color--textonbutton)!important;padding:5px 15px !important; line-height: 1.8 }';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-primarybtn') !== false) {
						$block_style .= '.wp-block-navigation-item.is-style-primarybtn a{background-color:var(--wp--preset--color--primary)!important;color:var(--wp--preset--color--textonprimary)!important;padding:5px 15px !important; line-height: 1.8 }';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-cubeprimarybtn') !== false) {
						$block_style .= '.wp-block-navigation-item.is-style-cubeprimarybtn a{background-color:var(--wp--preset--color--primary)!important;color:var(--wp--preset--color--textonprimary)!important;padding:5px 15px !important; line-height: 1.8;border:none !important;box-shadow: 0px 2px 4px rgb(45 35 66 / 20%), 0px 7px 13px -3px rgb(45 35 66 / 30%), inset 0px -3px 0px rgb(58 65 111 / 50%);text-shadow: 0 1px 0 rgb(0 0 0 / 40%); border-radius:5px}.wp-block-navigation-item.is-style-cubeprimarybtn a:after{display:none}.wp-block-navigation-item.is-style-cubeprimarybtn a:active{transform: translateY(2px);box-shadow: 0px 2px 2px rgb(45 35 66 / 15%)}.wp-block-navigation-item.is-style-cubeprimarybtn a:hover{transform: translateY(-2px);}.wp-block-navigation-item.gs-cubebtndark a:hover{transform: translateY(-2px);}';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-secondarybtn') !== false) {
						$block_style .= '.wp-block-navigation-item.is-style-secondarybtn a{background-color:var(--wp--preset--color--secondary)!important;color:var(--wp--preset--color--textonprimary)!important;padding:5px 15px !important; line-height: 1.8 }';
					}
					if (str_contains($block['attrs']['className'], 'gs-soft-rounded') !== false) {
						$block_style .= '.wp-block-navigation-item.gs-soft-rounded a{border-radius:5px}';
					}
					if (str_contains($block['attrs']['className'], 'gs-hard-rounded') !== false) {
						$block_style .= '.wp-block-navigation-item.gs-hard-rounded a{border-radius:100px}';
					}
				}
                
                else if ($blockname == 'core/group') {
					if (str_contains($block['attrs']['className'], 'is-style-no-margin') !== false) {
						$block_style .= '.is-style-no-margin {margin:0 !important;}';
					}
					
				}else if ($blockname == 'core/post-navigation-link') {
					if (str_contains($block['attrs']['className'], 'is-style-hovershadow') !== false) {
						$block_style .= '.wp-block-post-navigation-link.is-style-hovershadow:before{position: absolute;top: 0;right: 0;left: 0;bottom: 0;transition: box-shadow 0.5s var(--greenshift-transition);content: "";border-radius: 5px;border: 1px solid var(--wp--preset--color--lightborder);}.wp-block-post-navigation-link.is-style-hovershadow:hover:before{box-shadow: 0 3px 40px rgb(188 207 219 / 35%);}.wp-block-post-navigation-link.is-style-hovershadow:empty:before{display:none}.wp-block-post-navigation-link.is-style-hovershadow{padding:20px}.wp-block-post-navigation-link.is-style-hovershadow a{text-decoration:none}';
					}
				} else if ($blockname == 'core/post-featured-image') {
					if (str_contains($block['attrs']['className'], 'is-style-gs-half-image-offset') !== false) {
						$block_style .= '.is-style-gs-half-image-offset::before {content: "";position: absolute;left: 0;bottom: 0;height: 50%;background-color: var(--wp--preset--color--contrastcolor);width:100vw;margin-left: calc(-100vw / 2 + 100% / 2);margin-right: calc(-100vw / 2 + 100% / 2);}.is-style-gs-half-image-offset, .is-style-gs-half-image-offset img{position:relative; margin-top:0; margin-bottom:0}';
					}
                    else if (str_contains($block['attrs']['className'], 'is-style-gs-shadowradius') !== false) {
						$block_style .= '.is-style-gs-shadowradius{box-shadow: 0 0 50px rgb(49 45 161 / 12%);border-radius: 20px;}';
					}
					if (str_contains($block['attrs']['className'], 'gs-hover-scale-img') !== false) {
						$block_style .= '.gs-hover-scale-img {overflow:hidden}.gs-hover-scale-img img{transition: transform .6s var(--greenshift-transition);}.gs-hover-scale-img:hover img {transform: scale(1.05);}.gs-hover-scale-img a{display:block}';
					}
				}
                else if ($blockname == 'core/post-terms') {
					if (str_contains($block['attrs']['className'], 'is-style-greenshift-tags-color') !== false) {
						$block_style .= '.is-style-greenshift-tags-color.wp-block-post-terms a{display:inline-block;margin:0 .25rem;background:var(--wp--preset--color--tagcolor);padding:5px 10px;font-size:var(--wp--preset--font-size--xsmall);text-decoration:none;border-radius:5px; line-height:var(--wp--custom--line-height--normal);color:currentColor;}.is-style-greenshift-tags-color.wp-block-post-terms .wp-block-post-terms__separator{display:none}';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-gs-tags-rounded') !== false) {
						$block_style .= '.is-style-gs-tags-rounded.wp-block-post-terms a{display:inline-block;margin:0 .25rem .25rem .25rem;padding:2px 10px;text-decoration:none;border-radius:50px;color:currentColor;border:1px solid currentColor; opacity:0.8; transition: opacity 0.5s ease }.is-style-gs-tags-rounded.wp-block-post-terms .wp-block-post-terms__separator{display:none}.is-style-gs-tags-rounded.wp-block-post-terms a:hover{opacity:1}';
					}
                    else if (str_contains($block['attrs']['className'], 'is-style-gs-tags-greybground') !== false) {
						$block_style .= '.is-style-gs-tags-greybground.wp-block-post-terms a{display:inline-block;margin:0 .3rem .25rem 0;padding:2px 10px;text-decoration:none;border-radius:50px;color:currentColor;background: var(--wp--preset--color--lightborder); opacity:0.8; transition: opacity 0.5s ease }.is-style-gs-tags-greybground.wp-block-post-terms .wp-block-post-terms__separator{display:none}.is-style-gs-tags-greybground.wp-block-post-terms a:hover{opacity:1}';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-greenshift-tags-nounder') !== false) {
						$block_style .= '.is-style-greenshift-tags-nounder.wp-block-post-terms a{text-decoration: none;display:inline;background-repeat:no-repeat;background-image:linear-gradient(transparent calc(100% - 1px),currentColor 1px);transition:.7s var(--greenshift-transition);background-size:0 95%;}.is-style-greenshift-tags-nounder.wp-block-post-terms a:hover{background-size:100% 95%}';
					}
				} else if ($blockname == 'core/categories') {
					if (str_contains($block['attrs']['className'], 'is-style-listcategories') !== false) {
						$block_style .= 'ul.is-style-listcategories, .is-style-listcategories ul{display:flex; flex-wrap:wrap;
							padding: 0 !important; gap:12px; font-size:17px}.is-style-listcategories li{list-style:none;padding:5px 10px;background:var(--wp--preset--color--tagcolor); transition: transform 0.3s var(--greenshift-transition)}.is-style-listcategories li a{ text-decoration:none}.is-style-listcategories li:hover{transform: scale(1.07)}';
					}
				}else if ($blockname == 'woocommerce/product-categories') {
					if (str_contains($block['attrs']['className'], 'is-style-listcategories') !== false) {
						$block_style .= 'ul.is-style-listcategories, .is-style-listcategories ul{display:flex; flex-wrap:wrap;
							padding: 0 !important; gap:12px; font-size:17px}.is-style-listcategories li{list-style:none;padding:5px 10px;background:var(--wp--preset--color--tagcolor); transition: transform 0.3s var(--greenshift-transition)}.is-style-listcategories li a{ text-decoration:none}.is-style-listcategories li:hover{transform: scale(1.07)}';
					}
				} else if ($blockname == 'core/query') {
					if (str_contains($block['attrs']['className'], 'is-style-gs-creativeoverlay') !== false) {
						$block_style .= '.is-style-gs-creativeoverlay > ul > li{position:relative;transition: transform .5s ease}.is-style-gs-creativeoverlay > ul > li:before{position: absolute;top: 0;right: 0;z-index: 1;opacity: 1;transform: scale(1);bottom: 0;left: 0;content: "";pointer-events: none;transition: background .35s,transform .6s; background: linear-gradient(0deg, rgba(0,0,0,0.7), transparent)}.is-style-gs-creativeoverlay > ul > li:hover:before{background: linear-gradient(0deg, var(--wp--preset--color--primary), transparent)}.is-style-gs-creativeoverlay > ul > li:hover{transform: translateY(-5px)}';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-gs-brdnpaddradius') !== false) {
						$block_style .= '.is-style-gs-brdnpaddradius > ul > li{border-radius:8px; padding:15px;box-sizing: border-box;border: 1px solid var(--wp--preset--color--lightborder);}.editor-styles-wrapper .is-style-gs-brdnpaddradius figure.wp-block-post-featured-image, .is-style-gs-brdnpaddradius figure.wp-block-post-featured-image{margin:-15px -15px 12px -15px !important;border-radius:8px 8px 0 0}';
					}
				} else if ($blockname == 'core/paragraph') {
                    if (str_contains($block['attrs']['className'], 'is-style-gradientmask') !== false) {
						$block_style .= '.is-style-gradientmask{-webkit-background-clip: text !important;
                            -webkit-text-fill-color: transparent !important;}';
					}
				}else if ($blockname == 'core/columns') {
					if (str_contains($block['attrs']['className'], 'gs-tablet-collapse') !== false) {
						$block_style .= '@media only screen and (max-width: 992px){.gs-tablet-collapse{display: flex;flex-direction: column;flex-wrap: wrap;}.gs-tablet-collapse.wp-block-columns:not(.is-not-stacked-on-mobile)>.wp-block-column:not(:first-child){margin-left:0}}';
					}
                    if (str_contains($block['attrs']['className'], 'negative-desktop-margin') !== false) {
						$block_style .= '@media only screen and (min-width: 993px){.negative-desktop-margin{margin-top:-100px !important}}';
					}
				}else if ($blockname == 'core/column' || $blockname == 'core/buttons') {
					if (str_contains($block['attrs']['className'], 'gs-tablet-center') !== false) {
						$block_style .= '@media only screen and (max-width: 992px){.gs-tablet-center{justify-content:center !important}}';
					}
                    else if (str_contains($block['attrs']['className'], 'gs-tablet-start') !== false) {
						$block_style .= '@media only screen and (max-width: 992px){.gs-tablet-start{justify-content:flex-start !important}}';
					}
				}else if ($blockname == 'core/heading') {
					if (str_contains($block['attrs']['className'], 'is-style-gradientmask') !== false) {
						$block_style .= '.is-style-gradientmask{-webkit-background-clip: text !important;
                            -webkit-text-fill-color: transparent !important;}';
					}
				}else if ($blockname == 'core/search') {
					if (str_contains($block['attrs']['className'], 'is-style-floating-white-search') !== false) {
						if(!is_admin()){
							wp_enqueue_style('greenshift-floating-search');
							wp_enqueue_script('greenshift-floating-search');
						}
					}
					else if (str_contains($block['attrs']['className'], 'is-style-header-search') !== false) {
						$block_style .= '.is-style-header-search input[type=search]{border: none !important; padding:0 15px}.is-style-header-search .wp-block-search__button{padding: 5px !important;}.is-style-header-search .wp-block-search__button svg{min-height:1em; min-width:1em}.is-style-header-search .wp-block-search__inside-wrapper{background-color: var(--wp--preset--color--contrastcolor);}';
					}
				}else if ($blockname == 'core/post-excerpt' || $blockname == 'core/post-title') {
					if (str_contains($block['attrs']['className'], 'is-style-text-clamp-two') !== false) {
						$block_style .= '.is-style-text-clamp-two p, .wp-block-post-title.is-style-text-clamp-two{display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;  overflow: hidden; margin:0}';
					}
					else if (str_contains($block['attrs']['className'], 'is-style-text-clamp-three') !== false) {
						$block_style .= '.is-style-text-clamp-three p, .wp-block-post-title.is-style-text-clamp-three{display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;  overflow: hidden; margin:0}';
					}
				}else if ($blockname == 'woocommerce/product-search') {
					if (str_contains($block['attrs']['className'], 'is-style-theme-search-main') !== false) {
						$block_style .= '.is-style-theme-search-main button{background-color: var(--wp--preset--color--primary);border: 1px solid transparent;border-radius: 3px;color: var(--wp--preset--color--textonprimary);font-family: var(--wp--preset--font-family--primary);font-size: var(--wp--preset--font-size--small);padding-left:16px !important;padding-right:16px !important;text-decoration: none;white-space: normal;width: auto;transition: all 0.3s var(--greenshift-transition);display: inline-block;white-space: nowrap;}.is-style-theme-search-round input{border-radius: 3px;}';
					}else if (str_contains($block['attrs']['className'], 'is-style-theme-search-round') !== false) {
						$block_style .= '.is-style-theme-search-round button{background-color: var(--wp--preset--color--primary);border: 1px solid transparent;border-radius: 0 50px 50px 0;color: var(--wp--preset--color--textonprimary);font-family: var(--wp--preset--font-family--primary);font-size: var(--wp--preset--font-size--small);padding-left:20px !important;padding-right:20px !important;text-decoration: none;white-space: normal;width: auto;transition: all 0.3s var(--greenshift-transition);display: inline-block;white-space: nowrap;}.is-style-theme-search-round input{border-radius: 50px 0 0 50px;padding-left: 20px !important;}';
					}
				}else if ($blockname == 'core/site-logo' || $blockname == 'core/site-title' || $blockname == 'core/site-tagline') {
					if (str_contains($block['attrs']['className'], 'is-style-hideontabletdown') !== false) {
						$block_style .= '@media(max-width:991.98px){.is-style-hideontabletdown{display:none !important}}';
					}
				}
                else if ($blockname == 'core/column') {
					if (str_contains($block['attrs']['className'], 'is-style-softborder') !== false) {
						$block_style .= '.is-style-softborder{border-radius:12px}';
					}
				}		
			}
			if (!empty($block['attrs'])) {
				if ($blockname == 'core/cover' || $blockname == 'core/column' || $blockname == 'core/columns' || $blockname == 'core/group'|| $blockname == 'core/template-part' || $blockname == 'core/image' || $blockname == 'core/button' || $blockname == 'core/site-title' || $blockname == 'core/site-logo') {
					if (!empty($block['attrs']['gshideOnMobile'])) {
						$block_style .= '@media(max-width:575.98px){.gs-mobile-hide{display:none !important}}';
					}
					if (!empty($block['attrs']['gshideOnTablet'])) {
						$block_style .= '@media(max-width:991.98px) and (min-width:576px){.gs-tablet-hide{display:none !important}}';
					}
					if (!empty($block['attrs']['gshideOnDesktop'])) {
						$block_style .= '@media(min-width:992px){.gs-desktop-hide{display:none !important}}';
					}
                    if ($blockname == 'core/group' && !empty($block['attrs']['gsStickyHeader'])) {
                        wp_enqueue_script('greenshift-stickyheader');
                        $block_style .= '.gs-sticky-enable{transition:all .5s var(--greenshift-transition), z-index 0s;position:sticky;top:0;z-index:100000}.gs-sticky-header{transition:all .5s var(--greenshift-transition)}.gs-sticky-enable .gs-sticky-header{transition-delay:.1s}';
                        if(empty($block['attrs']['gsStickyHeaderShadow'])) {
                            $block_style .= '.gs-sticky-enable .gs-sticky-header{box-shadow:0 10px 20px rgba(44,62,80,.05);}';
                        }
                        if(!empty($block['attrs']['gsStickyLogoHeight'])) {
                            $block_style .= '.gs-sticky-enable .custom-logo{height:'.$block['attrs']['gsStickyLogoHeight'].'px !important; width:auto !important;}';
                        }
                        if(!empty($block['attrs']['gsStickyBg'])) {
                            $block_style .= '.gs-sticky-enable .gs-sticky-header{background:'.$block['attrs']['gsStickyBg'].' !important;}';
                        }
                        if(!empty($block['attrs']['gsStickyHeaderUp'])) {
                            $block_style .= '.site-header:not(.gs-sticky-enable):not(.gs-header-alpha), .wp-site-blocks > header.wp-block-template-part:not(.gs-sticky-enable):not(.gs-header-alpha){top:-100%}';
                        }
                        if(!empty($block['attrs']['gsStickyColor'])) {
                            $block_style .= '.gs-sticky-enable .gs-sticky-header, .gs-sticky-enable .gs-sticky-header .wp-block-navigation__container>.wp-block-navigation-item>a, .gs-sticky-enable .gs-sticky-header .wp-block-site-title a{color:'.$block['attrs']['gsStickyColor'].' !important;}.gs-sticky-enable .gs-sticky-header .wp-block-navigation-submenu .wp-block-navigation__submenu-icon > svg{stroke:'.$block['attrs']['gsStickyColor'].' !important;}.gs-sticky-enable .gs-sticky-header .wp-block-navigation__responsive-container-open svg{fill:'.$block['attrs']['gsStickyColor'].'!important;}';
                        }
                    }else if ($blockname == 'core/site-logo') {
                        if (!empty($block['attrs']['stickyLogoSrc'])){
                            $html = str_replace('src=', 'data-originalsrc="" data-stickysrc="'.esc_url($block['attrs']['stickyLogoSrc']).'" src=', $html);
                        }
                    }
                    if ($blockname == 'core/template-part' && !empty($block['attrs']['gsHeaderAlpha'])) {
                        $block_style .= '.site-header{left: 0;right: 0;position:absolute; top:0;}.has-modal-open .site-header{z-index: 100001;}.gs-sticky-enable.site-header{position:fixed}.site-header:not(.gs-sticky-enable) > div{background: transparent !important}.site-header:not(.gs-sticky-enable){z-index:999;}#wpadminbar ~ .wp-site-blocks .site-header:not(.gs-sticky-enable){top:32px;}';
                        $html = str_replace('wp-block-template-part', 'wp-block-template-part gs-header-alpha', $html);
                    }
				}
                if ($blockname == 'core/navigation-submenu') {
                    if ( (!empty($block['attrs']['gsId']) && (!empty($block['attrs']['gsSubWidth']) || !empty($block['attrs']['gsMenuImageGap']) || !empty($block['attrs']['gsSubPadding']) || !empty($block['attrs']['gsPaddingB']) || !empty($block['attrs']['gsInheritBg']) )) || !empty($block['attrs']['gsMenuType']) || !empty($block['attrs']['gsReusableMenuId'])  ) {
                        $p = new WP_HTML_Tag_Processor( $html );
                        if ( $p->next_tag( array( 'tag_name' => 'li', 'class_name'=> 'wp-block-navigation-item' ) ) ) {
                            if(!empty($block['attrs']['gsSubWidth'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' > .wp-block-navigation__submenu-container { min-width: '.$block['attrs']['gsSubWidth'].'px !important; }}';
                            }
                            if(!empty($block['attrs']['gsSubPadding'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' > .wp-block-navigation__submenu-container { padding: '.$block['attrs']['gsSubPadding'].'px !important; }}';
                            }
                            if(!empty($block['attrs']['gsMenuImageGap'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' > .wp-block-navigation-item__content, .gs-'.$block['attrs']['gsId'].' > .wp-block-navigation-item__content > .wp-block-navigation-item__label { gap: '.$block['attrs']['gsMenuImageGap'].'px !important; }';
                            }
                            if(!empty($block['attrs']['gsInheritBg'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' > .wp-block-navigation__submenu-container {background:none !important; box-shadow:none !important; }';
                            }
                            if(!empty($block['attrs']['gsPaddingB'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].'{ padding-bottom: '.$block['attrs']['gsPaddingB'].'px !important; }';
                            }
                            if(!empty($block['attrs']['gsMenuType'])){
                                if($block['attrs']['gsMenuType'] == 'megamenu'){
                                    $p->add_class( 'is-style-mega-menu-right' );
                                    wp_enqueue_style('greenshift-columnedmega-menu');
                                }
                                else if($block['attrs']['gsMenuType'] == 'megamenuright'){
                                    $p->add_class( 'is-style-mega-menu-left' );
                                    wp_enqueue_style('greenshift-columnedmega-menu');
                                }
                                else if($block['attrs']['gsMenuType'] == 'megamenufull'){
                                    $p->add_class( 'is-style-gs-megamenufull' );
                                    wp_enqueue_style('greenshift-mega-menu');
                                    wp_enqueue_script('greenshift-mega-menu');
                                }
                            }
                            if(!empty($block['attrs']['gsReusableMenuId'])){
                                $p->add_class( 'gs-el-onhover load-block-'.(int)$block['attrs']['gsReusableMenuId'] );
                                wp_enqueue_style('greenshift-ajaxmega-menu');
                            }
                        }
                        $html = $p->get_updated_html();
					}
				}
                if ($blockname == 'core/navigation-link') {
                    if ( !empty($block['attrs']['gsReusableMenuId']) ) {
                        $ajax = !empty($block['attrs']['gsReusableAjax']) ? 'ajax=1' : '';
                        $html = do_shortcode('[wp_reusable_render '.$ajax.' height=10px id='.$block['attrs']['gsReusableMenuId'].']');
					}
                    if ( (!empty($block['attrs']['gsMenuImageGap']) && !empty($block['attrs']['gsId'])) ) {
                        $p = new WP_HTML_Tag_Processor( $html );
                        if ( $p->next_tag( array( 'tag_name' => 'LI', 'class_name'=> 'wp-block-navigation-item' ) ) ) {
                            if(!empty($block['attrs']['gsMenuImageGap']) && !empty($block['attrs']['gsId'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' > .wp-block-navigation-item__content, .gs-'.$block['attrs']['gsId'].' > .wp-block-navigation-item__content > .wp-block-navigation-item__label { gap: '.$block['attrs']['gsMenuImageGap'].'px !important; }';
                            }
                        }
                        $html = $p->get_updated_html();
					}
				}
                if ($blockname == 'core/navigation') {
                    if ( !empty($block['attrs']['gsReusableMobileTopId']) ) {
                        $mobtop = do_shortcode('[wp_reusable_render id='.$block['attrs']['gsReusableMobileTopId'].']');
                        $html = str_replace('<ul class="wp-block-navigation__container', '<div class="gs-mobile-top-template" style="display:none;width:100%">'.$mobtop.'</div><ul class="wp-block-navigation__container', $html );
                    }
                    if ( !empty($block['attrs']['gsReusableMobileBottomId']) ) {
                        $mobbottom = do_shortcode('[wp_reusable_render id='.$block['attrs']['gsReusableMobileBottomId'].']');
                        $html = str_replace('<ul class="wp-block-navigation__container', '<div class="gs-mobile-bottom-template" style="display:none;width:100%; order:3">'.$mobbottom.'</div><ul class="wp-block-navigation__container', $html );
                    }
                    
                    if ( !empty($block['attrs']['gsId']) && (!empty($block['attrs']['gsPaddingV']) || !empty($block['attrs']['gsPaddingB']) || !empty($block['attrs']['gsSubMenuHoverColor']) || !empty($block['attrs']['gsMenuHoverColor']) || !empty($block['attrs']['gsMenuHoverBg']) || !empty($block['attrs']['gsSubMenuHoverBg']) || !empty($block['attrs']['gsMenuHoverDisableLine']) || !empty($block['attrs']['gsMenuMobileBg']) || !empty($block['attrs']['gsMenuMobileColor']) || !empty($block['attrs']['gsMenuMobileArrowBg']) || !empty($block['attrs']['gsMenuMobileArrowColor']) )) {
                        $p = new WP_HTML_Tag_Processor( $html );
                        if ( $p->next_tag( array( 'tag_name' => 'NAV', 'class_name'=> 'wp-block-navigation' ) ) ) {
                            if(!empty($block['attrs']['gsMenuHoverDisableLine'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' .wp-block-navigation-item:not(.has-child)>a:after{display:none} ';
                            }
                            if(!empty($block['attrs']['gsPaddingV'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__container > .wp-block-navigation-item{ padding-top: '.$block['attrs']['gsPaddingV'].'px;padding-bottom: '.$block['attrs']['gsPaddingV'].'px; }}';
                            }
                            if(!empty($block['attrs']['gsMenuMobileBg'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__responsive-container.is-menu-open{background-color: '.$block['attrs']['gsMenuMobileBg'].'!important; }';
                            }
                            if(!empty($block['attrs']['gsMenuMobileColor'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__responsive-container.is-menu-open .wp-block-navigation-item__content.wp-block-navigation-item__content{color: '.$block['attrs']['gsMenuMobileColor'].'!important; }.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__responsive-container-close svg{fill:'.$block['attrs']['gsMenuMobileColor'].'!important;}';
                            }
                            if(!empty($block['attrs']['gsMenuMobileArrowBg'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__responsive-container.is-menu-open .wp-block-navigation__responsive-container-content .wp-block-navigation__submenu-icon{background-color: '.$block['attrs']['gsMenuMobileArrowBg'].'!important; }';
                            }
                            if(!empty($block['attrs']['gsMenuMobileArrowColor'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__responsive-container.is-menu-open .wp-block-navigation-submenu .wp-block-navigation__submenu-icon svg{stroke: '.$block['attrs']['gsMenuMobileArrowColor'].'!important; }';
                            }
                            if(!empty($block['attrs']['gsPaddingH'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__container > .wp-block-navigation-item{ padding-left: '.$block['attrs']['gsPaddingH'].'px;padding-right: '.$block['attrs']['gsPaddingH'].'px; }}';
                            }
                            if(!empty($block['attrs']['gsMenuHoverColor'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__container > .wp-block-navigation-item:hover{ color: '.$block['attrs']['gsMenuHoverColor'].'; }}';
                            }
                            if(!empty($block['attrs']['gsMenuHoverBg'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__container > .wp-block-navigation-item:hover{ background-color: '.$block['attrs']['gsMenuHoverBg'].'; }}';
                            }
                            if(!empty($block['attrs']['gsSubMenuHoverColor'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__submenu-container > .wp-block-navigation-item:hover{ color: '.$block['attrs']['gsSubMenuHoverColor'].'; }}';
                            }
                            if(!empty($block['attrs']['gsSubMenuHoverBg'])){
                                $p->add_class( 'gs-'.$block['attrs']['gsId'] );
                                $block_style .= '@media(min-width:600px){.gs-'.$block['attrs']['gsId'].' .wp-block-navigation__submenu-container > .wp-block-navigation-item:hover{ background-color: '.$block['attrs']['gsSubMenuHoverBg'].'; }}';
                            }
                        }
                        $html = $p->get_updated_html();
					}
				}
			}
		}

		if ($block_style) {
			$html =  $html . '<style scoped>' . $block_style . '</style>';
		}
	}
	return $html;
}


////////////////////////////////////////////////////////////////
//Woocommerce conditional assets
////////////////////////////////////////////////////////////////

if(!function_exists('greenshift_generate_incss')) {
    function greenshift_generate_incss($type='', $random = '', $atts=array()) {  
        $output = '<style scoped>';
        if($type === 'woocart'){
            $output .= '
            body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width:var(--wp--style--global--wide-size) !important}
            h3{font-size:var(--wp--preset--font-size--big) !important}
            .woocommerce-cart .wp-block-post-title{text-align:center}
            .entry-content .woocommerce{padding:min(3vw, 25px)}
            .entry-content .woocommerce{max-width:1200px}
            .woocommerce:after {
                display: table;
                content: "";
                clear: both;
            }
            .woocommerce .cart-collaterals{margin-bottom:30px}
            .woocommerce table.cart, .woocommerce .cart-collaterals table{border:none}
            .woocommerce table.cart thead th, .woocommerce .cart-collaterals table thead th{border-right:none; font-size:15px; border-top:none}
            .woocommerce table.cart td, .woocommerce table.cart th, .woocommerce .cart-collaterals table th, .woocommerce .cart-collaterals table td{border-right:none; border-left:none; background:transparent; padding:15px}
            .woocommerce table.cart tr{border:none}
            .woocommerce .cart-collaterals table tr:last-child th, .woocommerce .cart-collaterals table tr:last-child td {border-bottom: none;    padding-top: 22px;}
            table.shop_table_responsive td:not([colspan]):after{border-left:none !important}
            .woocommerce table.cart tr td:last-child, .woocommerce table.cart tr th:last-child {
                text-align: right;
                background:none transparent;
            }
            .cart-collaterals ul li{list-style:none !important}
            .cart_totals .wc-proceed-to-checkout{ margin-top: 22px}
            tr.order-total th {
                font-size: 18px;
            }
            tr.order-total strong .amount {
                font-size: 22px;
            }
            .form-row-wide input[type="text"], .form-row-wide textarea, .form-row-wide select {
                box-shadow:none; border: 1px solid #ddd; font-size:15px; padding: 10px;
            }
              .woocommerce table.cart .product-thumbnail { min-width: 100px; text-align: center;}
              .woocommerce table.cart img { width: 50px; height: auto; }
              .woocommerce table.cart th{ vertical-align: middle; }
              .woocommerce table.cart a.remove{ display: block; font-size: 32px; height: 1em; width: 1em; text-align: center; line-height: 1; border-radius: 100%; color: red; text-decoration: none; margin: 0 auto; }
              .woocommerce table.cart a.remove:hover{ background-color: red; color: #fff; }
              .woocommerce table.cart td.actions { text-align: right; padding: 20px 0; border-bottom:none }
              .woocommerce table.cart td.actions .coupon { float: left; }
              .woocommerce table.cart td.actions .coupon label{ display: none; }
              .woocommerce table.cart td.actions .coupon .input-text{ box-shadow: none !important; float: left; border: 1px solid #ddd; margin: 0 4px 0 0; outline: 0; line-height: 1em; }
              .woocommerce table.cart td.actions .button.alt { float: right; margin-left: .25em; }
              .woocommerce table.cart input{ margin: 0; vertical-align: middle; line-height: 1em; }
              .woocommerce .cart-collaterals:after, .woocommerce-page .cart-collaterals:after { content: ""; display: block; clear: both; }
              .woocommerce .cart-collaterals .cross-sells .products, .woocommerce-page .cart-collaterals .cross-sells .products { float: none; }
              .woocommerce .cart-collaterals .shipping_calculator { width: 48%; text-align: right; margin: 20px 0 0 0; }
              .woocommerce .cart-collaterals .shipping_calculator:after { content: ""; display: block; clear: both; }
              .woocommerce .cart-collaterals .shipping_calculator .button { width: 100%; float: none; display: block; }
              .woocommerce .cart-collaterals .shipping_calculator .col2-set .col-1, .woocommerce .cart-collaterals .shipping_calculator .col2-set .col-2{ width: 47%; }
              .woocommerce .cart-collaterals .cart_totals { padding: 25px 25px 30px 25px;border: 3px solid #EFEFEF; font-size: 15px; }
                .woocommerce .cart-collaterals h2{font-size:20px; margin: 0 0 20px 0;    text-transform: uppercase;}
              .woocommerce .cart-collaterals .cart_totals p { margin: 0;line-height: 20px;color: #999;font-size: 14px; }
              .woocommerce .cart-collaterals .cart_totals p small { color: #777; font-size: .83em; }
              .woocommerce .cart-collaterals .cart_totals table { border-collapse: separate; border-radius: 5px; margin: 0 0 6px; padding: 0;}
              .woocommerce .cart-collaterals .cart_totals table tr:first-child th, .woocommerce .cart-collaterals .cart_totals table tr:first-child td { border-top: 0; }
              .woocommerce .cart-collaterals .cart_totals table td, .woocommerce .cart-collaterals .cart_totals table th { padding: 6px 3px; }
              .woocommerce .cart-collaterals .cart_totals table small { display: block; color: #777; }
              .woocommerce .cart-collaterals .cart_totals table select { width: 100%; }
              .woocommerce .cart-collaterals .cart_totals .discount td { color: #247600; }
              .woocommerce .cart-collaterals .cart_totals tr td, .woocommerce .cart-collaterals .cart_totals tr th {padding: 10px 15px; border-bottom: 1px solid #E6E6E6;}
              .woocommerce .cart-collaterals .cart_totals tr td:last-child,  .woocommerce .cart-collaterals .cart_totals tr th:last-child{text-align: right}
              .woocommerce .cart-collaterals .cart_totals a.button.alt { display: block; font-size: 18px; width: 100%;}
              @media (min-width:1300px){
                    .woocommerce-cart-form{width:67%; float:left}
                    .woocommerce .cart-collaterals { width: 30%;float: right; }
              }
              @media screen and (max-width: 768px){
                .woocommerce #content table.cart .product-thumbnail,
                .woocommerce table.cart .product-thumbnail,
                .woocommerce-page #content table.cart .product-thumbnail,
                .woocommerce-page table.cart .product-thumbnail {
                    display: none
                }
                
                .woocommerce #content table.cart td.actions,
                .woocommerce table.cart td.actions,
                .woocommerce-page #content table.cart td.actions,
                .woocommerce-page table.cart td.actions {
                    text-align: left
                }

                .rtl.woocommerce #content table.cart td.actions,
                .rtl.woocommerce table.cart td.actions,
                .rtl.woocommerce-page #content table.cart td.actions,
                .rtl.woocommerce-page table.cart td.actions {
                    text-align: right
                }
                
                .woocommerce #content table.cart td.actions .coupon,
                .woocommerce table.cart td.actions .coupon,
                .woocommerce-page #content table.cart td.actions .coupon,
                .woocommerce-page table.cart td.actions .coupon {
                    float: none;
                    padding-bottom: .5em
                }
                
                .woocommerce #content table.cart td.actions .button,
                .woocommerce table.cart td.actions .button,
                .woocommerce-page #content table.cart td.actions .button,
                .woocommerce-page table.cart td.actions .button {
                    display: block;
                    width: 100%
                }
                
                .woocommerce .cart-collaterals .cart_totals,
                .woocommerce .cart-collaterals .cross-sells,
                .woocommerce .cart-collaterals .shipping_calculator,
                .woocommerce-page .cart-collaterals .cart_totals,
                .woocommerce-page .cart-collaterals .cross-sells,
                .woocommerce-page .cart-collaterals .shipping_calculator {
                    width: 100%;
                    float: none;
                    text-align: left
                }
                .rtl.woocommerce .cart-collaterals .cart_totals,
                .rtl.woocommerce .cart-collaterals .cross-sells,
                .rtl.woocommerce .cart-collaterals .shipping_calculator,
                .rtl.woocommerce-page .cart-collaterals .cart_totals,
                .rtl.woocommerce-page .cart-collaterals .cross-sells,
                .rtl.woocommerce-page .cart-collaterals .shipping_calculator {
                    width: 100%;
                    float: none;
                    text-align: right
                }
                .woocommerce table.shop_table_responsive tr td .quantity{clear:both;float:right}
                .rtl.woocommerce table.shop_table_responsive tr td .quantity{clear:both;float:left}
              }
              @media screen and (max-width: 767px){
                .woocommerce table.cart img{width: 100px;}
              }
              @media only screen and (max-width: 767px) and (min-width: 480px) {
                .woocommerce .cart-collaterals .shipping_calculator, .woocommerce .cart-collaterals .cart_totals { float: none !important; width: 100% !important; }
                .woocommerce table.cart td.actions .coupon, .woocommerce table.cart input.button { margin-bottom: 10px !important;}
              }
              @media only screen and (max-width: 479px) {
                .woocommerce .cart-collaterals .cart_totals, .woocommerce .cart-collaterals .shipping_calculator, .woocommerce table.cart td.actions .coupon { float: none !important; width: 100% !important; }
                .woocommerce table.cart td.actions .coupon .input-text{width: 100%; display: block; margin: 0 0 20px 0}
              }
              .rtl .woocommerce .cart-collaterals .cart_totals tr td:last-child, .rtl .woocommerce .cart-collaterals .cart_totals tr th:last-child, .rtl .woocommerce table.cart tr td:last-child, .rtl .woocommerce table.cart tr th:last-child{text-align: left}
              .rtl .woocommerce table.cart td.actions .coupon, .rtl .woocommerce table.cart td.actions .coupon .input-text{float:right}
              .rtl .woocommerce table.cart td.actions .coupon .input-text{margin-left:4px}
            ';           
        }
        else if($type === 'woomyaccount'){
            $output .= '
            .woocommerce-account .wp-block-post-title{text-align:center}
            .entry-content .woocommerce{padding:min(3vw, 35px); min-height:500px}
            .entry-content .woocommerce{max-width:1200px;border: 1px solid #0000000d;
                border-radius: 5px;
                box-shadow: 0 0 25px #0000000a;}
            .woocommerce:after {
                display: table;
                content: "";
                clear: both;
            }

            .woocommerce-account .woocommerce::after,
            .woocommerce-account .woocommerce::before {
                content: " ";
                display: table
            }

            .woocommerce-account .woocommerce::after {
                clear: both
            }

            .woocommerce-account .addresses .title::after,
            .woocommerce-account .addresses .title::before {
                content: " ";
                display: table
            }

            .woocommerce-account .addresses .title::after {
                clear: both
            }

            .woocommerce-account .addresses .title h3 {
                float: left
            }

            .woocommerce-account .addresses .title .edit {
                float: right
            }

            .woocommerce-account ol.commentlist.notes li.note p.meta {
                font-weight: 700;
                margin-bottom: 0
            }

            .woocommerce-account ol.commentlist.notes li.note .description p:last-child {
                margin-bottom: 0
            }

            .woocommerce-account ul.digital-downloads {
                margin-left: 0;
                padding-left: 0
            }

            .woocommerce-account ul.digital-downloads li {
                list-style: none;
                margin-left: 0;
                padding-left: 0
            }

            .woocommerce-account ul.digital-downloads li::before {
                font-family: WooCommerce;
                speak: never;
                font-weight: 400;
                font-variant: normal;
                text-transform: none;
                line-height: 1;
                -webkit-font-smoothing: antialiased;
                margin-right: .618em;
                content: "\e00a";
                text-decoration: none
            }

            .woocommerce-account ul.digital-downloads li .count {
                float: right
            }
            .woocommerce-MyAccount-content{font-size: var(--wp--preset--font-size--small);}
            .woocommerce form .form-row input.input-text, .woocommerce form .form-row textarea{background:white}
              .woocommerce-MyAccount-content .woocommerce-info{background-color: #fafafa;border:none;box-shadow:none}
              .woocommerce-MyAccount-navigation{float: left; width: 200px}
              .woocommerce-MyAccount-content {float: right;width: calc(100% - 220px);border: 1px solid #eee;padding: 25px;background: #fafafa; }
              .woocommerce-MyAccount-navigation ul{margin: 0 0 20px 0; overflow: hidden;padding:0}
              .woocommerce-MyAccount-navigation ul li{list-style: none; margin: 0; padding: 10px 0;border-top: 1px solid #eee;}
              .woocommerce-MyAccount-navigation ul li:first-child{border-top: none;}
              .woocommerce-MyAccount-navigation ul li a{display: block;  font-weight: bold;text-decoration: none; font-size: 14px;}
              .woocommerce-MyAccount-navigation ul li a:not(.is-active){color: #111}
              .woocommerce-MyAccount-navigation ul li a:before{display:none;content:"\f101";line-height:1.618;margin-left:.53em;width:1.387em;text-align:right;float:right;opacity:.25}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--dashboard a:before{content:"\f1de";}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--orders a:before{content:"\f291"}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--downloads a:before{content:"\f1c6"}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--edit-address a:before{content:"\f015"}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--payment-methods a:before{content:"\f09d"}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--edit-account a:before{content:"\f007"}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--customer-logout a:before{content:"\f08b"}.woocommerce-MyAccount-navigation ul li.woocommerce-MyAccount-navigation-link--subscriptions a:before{content:"\f021"}
              .woocommerce-MyAccount-navigation ul li a:hover:before, .woocommerce-MyAccount-navigation ul li.is-active a:before{opacity:1}
              .woocommerce-MyAccount-content legend{font-size: 18px; padding: 20px 10px}
              .woocommerce-MyAccount-content fieldset{border: 1px solid #e8e6e6;padding: 0 25px 25px 25px;margin: 0 0 10px 0;background: white;}
              .woocommerce-account.page .post{overflow: hidden}
              .woocommerce-form-row span em{font-size:80%; opacity: 0.5}
              .wc-block-components-notice-banner>.wc-block-components-notice-banner__content .wc-forward{box-shadow:none}
              .woocommerce table.my_account_orders { font-size: .85em; }
              .woocommerce table.my_account_orders th, .woocommerce table.my_account_orders td { padding: 12px 8px; vertical-align: middle; }
              .woocommerce table.my_account_orders .button {margin: 6px;font-size: 13px;text-transform: none;font-weight: normal;padding: 5px 10px;}
              .woocommerce table.my_account_orders .order-actions{ text-align: center; }
              .woocommerce table.my_account_orders .order-actions .button { margin: .125em 0 .125em .25em; }
              #customer_login{position: relative;}
              #customer_login::before {border-right: 1px solid #eee;height: 100%;position: absolute;content: " ";right: 50%;top: 0;}
              #customer_login .col-1, #customer_login .col-2{}
              #customer_login .col-1{padding-right: 20px}
              #customer_login .col-2{padding-left: 20px}
              #customer_login h2{font-weight: 400}
              @media screen and (max-width: 768px){
                .woocommerce table.my_account_orders tr td.order-actions,
                .woocommerce-page table.my_account_orders tr td.order-actions {
                    text-align: left
                }

                .rtl.woocommerce table.my_account_orders tr td.order-actions,
                .rtl.woocommerce-page table.my_account_orders tr td.order-actions {
                    text-align: right
                }
                
                .woocommerce table.my_account_orders tr td.order-actions::before,
                .woocommerce-page table.my_account_orders tr td.order-actions::before {
                    display: none
                }
                
                .woocommerce table.my_account_orders tr td.order-actions .button,
                .woocommerce-page table.my_account_orders tr td.order-actions .button {
                    float: none;
                    margin: .125em .25em .125em 0
                }
                .rtl.woocommerce table.my_account_orders tr td.order-actions .button,
                .rtl.woocommerce-page table.my_account_orders tr td.order-actions .button {
                    float: none;
                    margin: .125em 0 .125em .25em
                }
                .woocommerce .lost_reset_password .form-row-first,
                .woocommerce .lost_reset_password .form-row-last,
                .woocommerce-page .lost_reset_password .form-row-first,
                .woocommerce-page .lost_reset_password .form-row-last {
                    width: 100%;
                    float: none;
                    margin-right: 0
                }

                .rtl.woocommerce .lost_reset_password .form-row-first,
                .rtl.woocommerce .lost_reset_password .form-row-last,
                .rtl.woocommerce-page .lost_reset_password .form-row-first,
                .rtl.woocommerce-page .lost_reset_password .form-row-last {
                    width: 100%;
                    float: none;
                    margin-left: 0
                }

                .woocommerce-account .woocommerce-MyAccount-content,
                .woocommerce-account .woocommerce-MyAccount-navigation {
                    float: none;
                    width: 100%
                }
              }
              @media screen and (max-width: 767px){
                #customer_login::before{display: none;}
                #customer_login .col-1{padding-right: 0}
                #customer_login .col-2{padding-left: 0}
                .woocommerce-MyAccount-content, .woocommerce-MyAccount-navigation{float: none; width: 100%; margin: 0 0 20px 0}
              }
            ';           
        }
        else if($type === 'woocheckout'){
            $output .= '
            body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width:var(--wp--style--global--wide-size) !important}
            h3{font-size:var(--wp--preset--font-size--big) !important}
            .wc-block-components-product-metadata__description{display:none}
            .woocommerce-checkout .wp-block-post-title{text-align:center}
            .entry-content .woocommerce{padding:min(3vw, 25px)}
            .entry-content .woocommerce{max-width:1200px}
            .woocommerce-info{background-color: #ffffff;}
              .woocommerce .checkout_coupon .button{ padding: 10px 16px}
              .woocommerce table.shop_table.woocommerce-checkout-review-order-table thead th, .woocommerce table.shop_table.woocommerce-checkout-review-order-table tfoot td, .woocommerce table.shop_table.woocommerce-checkout-review-order-table tfoot th{text-transform:uppercase;border-right: none; background: none transparent; padding: 0.8em 0}
              .woocommerce table.shop_table.woocommerce-checkout-review-order-table{border:none}
              .woocommerce table.shop_table.woocommerce-checkout-review-order-table .product-total, .woocommerce table.shop_table.woocommerce-checkout-review-order-table tfoot td{text-align: right}
              .woocommerce table.shop_table.woocommerce-checkout-review-order-table td{border-right:none; padding: 0.3em 0; font-size: 90%}
              .woocommerce form.checkout_coupon{ border-bottom: 1px dashed #ccc; padding: 0 0 20px 0; margin: 2em 0; text-align: left; overflow: auto; }
              #customer_details{float: left; width: 48%;}
              .re_woocheckout_order{float: right; width: 48%; border: 3px solid #dbdbdb; padding:30px;  background-color: #fff;}
              .re_woocheckout_order h3{margin-top: 0;text-transform: uppercase;}
              a.about_paypal, .lost_password a{font-size: 80%}
              a.about_paypal{display: block;}
              .woocommerce .woocommerce-checkout .col2-set .col-1, .woocommerce .woocommerce-checkout .col2-set .col-2{float: none; width: 100%}
              .woocommerce .checkout .col-2 h3 { float: left; clear: none; }
              .woocommerce .checkout .col-2 .notes { clear: left; }
              .woocommerce .checkout .col-2 .form-row-first { clear: left; }
              .woocommerce .checkout div.shipping-address{ padding: 0; clear: left; width: 100%; }
              .woocommerce .checkout #shiptobilling{ float: right; line-height: 1.62em; margin: 0; padding: 0; }
              .woocommerce .checkout #shiptobilling label { font-size: .6875em; }
              .woocommerce .checkout .shipping_address { clear: both; }
              .woocommerce #payment ul.payment_methods { margin: 0; list-style: none outside; }
              .woocommerce #payment ul.payment_methods:after { content: ""; display: block; clear: both; }
              .woocommerce #payment ul.payment_methods li{ line-height: 1.8em; text-align: left; margin: 0; font-weight: normal; list-style: none;}
              .woocommerce #payment ul.payment_methods li input{ margin: 0 1em 0 0; }
              .woocommerce #payment ul.payment_methods li img{ vertical-align: middle; margin: -2px 10px 0 .5em; position: relative; }
              .woocommerce #payment #place_order { float: right; margin: 0; }
              .processing.woocommerce-checkout .place-order:before{display:inline-block; content: "\f021" !important; animation: fa-spin 1s linear infinite; margin: 5px 10px; float: right;}
              .woocommerce #payment .terms{ padding: 0 1em 0; text-align: right; }
              .woocommerce #payment div.payment_box{ position: relative; padding: 1em 2%; margin: 1em 0 1em 0; font-size: .92em; border-radius: 2px; line-height: 1.5em; background: #c5eafd; box-shadow: 0 1px 2px 0 rgba(0,0,0,0.25);  color: #5e5e5e; text-shadow: 0 1px 0 rgba(255,255,255,0.8); }
              .woocommerce #payment div.payment_box p:last-child{ margin-bottom: 0; }
              .woocommerce #payment div.payment_box #cc-expire-month, .woocommerce #payment div.payment_box #cc-expire-year{ width: 48%; float: left; }
              .woocommerce #payment div.payment_box #cc-expire-year{ float: right; }
              .woocommerce #payment div.payment_box span.help{ font-size: 11px; color: #777; line-height: 13px; font-weight: normal; }
              .woocommerce #payment div.payment_box .form-row{ margin: 0 0 1em; }
              .woocommerce #payment div.payment_box .form-row select { width: 48%; float: left; margin-right: 3.8%; }
              .woocommerce #payment div.payment_box .form-row select:nth-child(3n) { margin-right: 0 }
              .woocommerce #payment div.payment_box:after { content: ""; display: block; border: 8px solid #c5eafd; border-right-color: transparent; border-left-color: transparent; border-top-color: transparent; position: absolute; top: 0; left: 0; margin: -1em 0 0 2em; }
              .woocommerce table.shop_table tr, .woocommerce table.shop_table td, .woocommerce table.shop_table th{border:none}
              #wpmc-prev{margin: 0 10px}

              @media screen and (max-width: 768px){
                .woocommerce-page.woocommerce-checkout form.login .form-row,
                .woocommerce.woocommerce-checkout form.login .form-row {
                    width: 100%;
                    float: none
                }
                .woocommerce #payment .terms,
                .woocommerce-page #payment .terms {
                    text-align: left;
                    padding: 0
                }

                .rtl.woocommerce #payment .terms,
                .rtl.woocommerce-page #payment .terms {
                    text-align: right;
                    padding: 0
                }

                .woocommerce #payment #place_order,
                .woocommerce-page #payment #place_order {
                    float: none;
                    width: 100%;
                    box-sizing: border-box;
                    margin-bottom: 1em
                }
              }
              @media screen and (max-width: 767px){
                #customer_details, .re_woocheckout_order{ width: 100%; float: none; }
              }

            ';           
        }
        else if($type== 'checkoutcart'){
            $output .= '
            body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width:var(--wp--style--global--wide-size) !important}
            h3{font-size:var(--wp--preset--font-size--big) !important}
            #add_payment_method table.cart .product-thumbnail,
            .woocommerce-cart table.cart .product-thumbnail,
            .woocommerce-checkout table.cart .product-thumbnail {
                min-width: 32px
            }
            
            #add_payment_method table.cart img,
            .woocommerce-cart table.cart img,
            .woocommerce-checkout table.cart img {
                width: 32px;
                box-shadow: none
            }
            
            #add_payment_method table.cart td,
            #add_payment_method table.cart th,
            .woocommerce-cart table.cart td,
            .woocommerce-cart table.cart th,
            .woocommerce-checkout table.cart td,
            .woocommerce-checkout table.cart th {
                vertical-align: middle
            }
            
            #add_payment_method table.cart td.actions .coupon .input-text,
            .woocommerce-cart table.cart td.actions .coupon .input-text,
            .woocommerce-checkout table.cart td.actions .coupon .input-text {
                float: left;
                box-sizing: border-box;
                border: 1px solid #d3ced2;
                margin: 0 10px 0 0;
                outline: 0;
                min-width: 170px;
            }
            
            #add_payment_method table.cart input,
            .woocommerce-cart table.cart input,
            .woocommerce-checkout table.cart input {
                margin: 0;
                vertical-align: middle
            }
            
            #add_payment_method .wc-proceed-to-checkout,
            .woocommerce-cart .wc-proceed-to-checkout,
            .woocommerce-checkout .wc-proceed-to-checkout {
                padding: 1em 0
            }
            
            #add_payment_method .wc-proceed-to-checkout::after,
            #add_payment_method .wc-proceed-to-checkout::before,
            .woocommerce-cart .wc-proceed-to-checkout::after,
            .woocommerce-cart .wc-proceed-to-checkout::before,
            .woocommerce-checkout .wc-proceed-to-checkout::after,
            .woocommerce-checkout .wc-proceed-to-checkout::before {
                content: " ";
                display: table
            }
            
            #add_payment_method .wc-proceed-to-checkout::after,
            .woocommerce-cart .wc-proceed-to-checkout::after,
            .woocommerce-checkout .wc-proceed-to-checkout::after {
                clear: both
            }
            
            #add_payment_method .wc-proceed-to-checkout a.checkout-button,
            .woocommerce-cart .wc-proceed-to-checkout a.checkout-button,
            .woocommerce-checkout .wc-proceed-to-checkout a.checkout-button {
                display: block;
                text-align: center;
                margin-bottom: 1em;
                font-size: 1.25em;
                padding: 1em
            }
            
            #add_payment_method .cart-collaterals .shipping-calculator-button,
            .woocommerce-cart .cart-collaterals .shipping-calculator-button,
            .woocommerce-checkout .cart-collaterals .shipping-calculator-button {
                float: none;
                margin-top: .5em;
                display: inline-block
            }
            
            #add_payment_method .cart-collaterals .shipping-calculator-button::after,
            .woocommerce-cart .cart-collaterals .shipping-calculator-button::after,
            .woocommerce-checkout .cart-collaterals .shipping-calculator-button::after {
                font-family: WooCommerce;
                speak: never;
                font-weight: 400;
                font-variant: normal;
                text-transform: none;
                line-height: 1;
                -webkit-font-smoothing: antialiased;
                margin-left: .618em;
                content: "\e019";
                text-decoration: none
            }
            
            #add_payment_method .cart-collaterals .shipping-calculator-form,
            .woocommerce-cart .cart-collaterals .shipping-calculator-form,
            .woocommerce-checkout .cart-collaterals .shipping-calculator-form {
                margin: 1em 0 0 0
            }
            
            #add_payment_method .cart-collaterals .cart_totals p small,
            .woocommerce-cart .cart-collaterals .cart_totals p small,
            .woocommerce-checkout .cart-collaterals .cart_totals p small {
                color: #767676;
                font-size: .83em
            }
            
            #add_payment_method .cart-collaterals .cart_totals table,
            .woocommerce-cart .cart-collaterals .cart_totals table,
            .woocommerce-checkout .cart-collaterals .cart_totals table {
                border-collapse: separate;
                margin: 0 0 6px;
                padding: 0
            }
            
            #add_payment_method .cart-collaterals .cart_totals table tr:first-child td,
            #add_payment_method .cart-collaterals .cart_totals table tr:first-child th,
            .woocommerce-cart .cart-collaterals .cart_totals table tr:first-child td,
            .woocommerce-cart .cart-collaterals .cart_totals table tr:first-child th,
            .woocommerce-checkout .cart-collaterals .cart_totals table tr:first-child td,
            .woocommerce-checkout .cart-collaterals .cart_totals table tr:first-child th {
                border-top: 0
            }
            
            #add_payment_method .cart-collaterals .cart_totals table th,
            .woocommerce-cart .cart-collaterals .cart_totals table th,
            .woocommerce-checkout .cart-collaterals .cart_totals table th {
                width: 35%
            }
            
            #add_payment_method .cart-collaterals .cart_totals table td,
            #add_payment_method .cart-collaterals .cart_totals table th,
            .woocommerce-cart .cart-collaterals .cart_totals table td,
            .woocommerce-cart .cart-collaterals .cart_totals table th,
            .woocommerce-checkout .cart-collaterals .cart_totals table td,
            .woocommerce-checkout .cart-collaterals .cart_totals table th {
                vertical-align: top;
                border-left: 0;
                border-right: 0;
                line-height: 1.5em
            }
            
            #add_payment_method .cart-collaterals .cart_totals table small,
            .woocommerce-cart .cart-collaterals .cart_totals table small,
            .woocommerce-checkout .cart-collaterals .cart_totals table small {
                color: #767676
            }
            
            #add_payment_method .cart-collaterals .cart_totals table select,
            .woocommerce-cart .cart-collaterals .cart_totals table select,
            .woocommerce-checkout .cart-collaterals .cart_totals table select {
                width: 100%
            }
            
            #add_payment_method .cart-collaterals .cart_totals .discount td,
            .woocommerce-cart .cart-collaterals .cart_totals .discount td,
            .woocommerce-checkout .cart-collaterals .cart_totals .discount td {
                color: #77a464
            }
            
            #add_payment_method .cart-collaterals .cart_totals tr td,
            #add_payment_method .cart-collaterals .cart_totals tr th,
            .woocommerce-cart .cart-collaterals .cart_totals tr td,
            .woocommerce-cart .cart-collaterals .cart_totals tr th,
            .woocommerce-checkout .cart-collaterals .cart_totals tr td,
            .woocommerce-checkout .cart-collaterals .cart_totals tr th {
                border-top: 1px solid #ebe9eb
            }
            
            #add_payment_method .cart-collaterals .cart_totals .woocommerce-shipping-destination,
            .woocommerce-cart .cart-collaterals .cart_totals .woocommerce-shipping-destination,
            .woocommerce-checkout .cart-collaterals .cart_totals .woocommerce-shipping-destination {
                margin-bottom: 0
            }
            
            #add_payment_method .cart-collaterals .cross-sells ul.products li.product,
            .woocommerce-cart .cart-collaterals .cross-sells ul.products li.product,
            .woocommerce-checkout .cart-collaterals .cross-sells ul.products li.product {
                margin-top: 0
            }
            
            #add_payment_method .checkout .col-2 h3#ship-to-different-address,
            .woocommerce-cart .checkout .col-2 h3#ship-to-different-address,
            .woocommerce-checkout .checkout .col-2 h3#ship-to-different-address {
                float: left;
                clear: none
            }
            
            #add_payment_method .checkout .col-2 .notes,
            .woocommerce-cart .checkout .col-2 .notes,
            .woocommerce-checkout .checkout .col-2 .notes {
                clear: left
            }
            
            #add_payment_method .checkout .col-2 .form-row-first,
            .woocommerce-cart .checkout .col-2 .form-row-first,
            .woocommerce-checkout .checkout .col-2 .form-row-first {
                clear: left
            }
            
            #add_payment_method .checkout .create-account small,
            .woocommerce-cart .checkout .create-account small,
            .woocommerce-checkout .checkout .create-account small {
                font-size: 11px;
                color: #767676;
                font-weight: 400
            }
            
            #add_payment_method .checkout div.shipping-address,
            .woocommerce-cart .checkout div.shipping-address,
            .woocommerce-checkout .checkout div.shipping-address {
                padding: 0;
                clear: left;
                width: 100%
            }
            
            #add_payment_method .checkout .shipping_address,
            .woocommerce-cart .checkout .shipping_address,
            .woocommerce-checkout .checkout .shipping_address {
                clear: both
            }
            
            #add_payment_method #payment,
            .woocommerce-cart #payment,
            .woocommerce-checkout #payment {
                background: #f7f7f7;
                border-radius: 5px
            }
            
            #add_payment_method #payment ul.payment_methods,
            .woocommerce-cart #payment ul.payment_methods,
            .woocommerce-checkout #payment ul.payment_methods {
                text-align: left;
                padding: 1em;
                border-bottom: 1px solid #d3ced2;
                margin: 0;
                list-style: none outside
            }
            
            #add_payment_method #payment ul.payment_methods::after,
            #add_payment_method #payment ul.payment_methods::before,
            .woocommerce-cart #payment ul.payment_methods::after,
            .woocommerce-cart #payment ul.payment_methods::before,
            .woocommerce-checkout #payment ul.payment_methods::after,
            .woocommerce-checkout #payment ul.payment_methods::before {
                content: " ";
                display: table
            }
            
            #add_payment_method #payment ul.payment_methods::after,
            .woocommerce-cart #payment ul.payment_methods::after,
            .woocommerce-checkout #payment ul.payment_methods::after {
                clear: both
            }
            
            #add_payment_method #payment ul.payment_methods li,
            .woocommerce-cart #payment ul.payment_methods li,
            .woocommerce-checkout #payment ul.payment_methods li {
                line-height: 2;
                text-align: left;
                margin: 0;
                font-weight: 400
            }
            
            #add_payment_method #payment ul.payment_methods li input,
            .woocommerce-cart #payment ul.payment_methods li input,
            .woocommerce-checkout #payment ul.payment_methods li input {
                margin: 0 1em 0 0
            }
            
            #add_payment_method #payment ul.payment_methods li img,
            .woocommerce-cart #payment ul.payment_methods li img,
            .woocommerce-checkout #payment ul.payment_methods li img {
                vertical-align: middle;
                margin: -2px 0 0 .5em;
                padding: 0;
                position: relative;
                box-shadow: none
            }
            
            #add_payment_method #payment ul.payment_methods li img+img,
            .woocommerce-cart #payment ul.payment_methods li img+img,
            .woocommerce-checkout #payment ul.payment_methods li img+img {
                margin-left: 2px
            }
            
            #add_payment_method #payment ul.payment_methods li:not(.woocommerce-notice)::after,
            #add_payment_method #payment ul.payment_methods li:not(.woocommerce-notice)::before,
            .woocommerce-cart #payment ul.payment_methods li:not(.woocommerce-notice)::after,
            .woocommerce-cart #payment ul.payment_methods li:not(.woocommerce-notice)::before,
            .woocommerce-checkout #payment ul.payment_methods li:not(.woocommerce-notice)::after,
            .woocommerce-checkout #payment ul.payment_methods li:not(.woocommerce-notice)::before {
                content: " ";
                display: table
            }
            
            #add_payment_method #payment ul.payment_methods li:not(.woocommerce-notice)::after,
            .woocommerce-cart #payment ul.payment_methods li:not(.woocommerce-notice)::after,
            .woocommerce-checkout #payment ul.payment_methods li:not(.woocommerce-notice)::after {
                clear: both
            }
            
            #add_payment_method #payment div.form-row,
            .woocommerce-cart #payment div.form-row,
            .woocommerce-checkout #payment div.form-row {
                padding: 1em
            }
            
            #add_payment_method #payment div.payment_box,
            .woocommerce-cart #payment div.payment_box,
            .woocommerce-checkout #payment div.payment_box {
                position: relative;
                box-sizing: border-box;
                width: 100%;
                padding: 1em;
                margin: 1em 0;
                font-size: .92em;
                border-radius: 2px;
                line-height: 1.5;
                background-color: #dfdcde;
                color: #515151
            }
            
            #add_payment_method #payment div.payment_box input.input-text,
            #add_payment_method #payment div.payment_box textarea,
            .woocommerce-cart #payment div.payment_box input.input-text,
            .woocommerce-cart #payment div.payment_box textarea,
            .woocommerce-checkout #payment div.payment_box input.input-text,
            .woocommerce-checkout #payment div.payment_box textarea {
                border-color: #c7c1c6;
                border-top-color: #bbb3b9
            }
            
            #add_payment_method #payment div.payment_box ::-webkit-input-placeholder,
            .woocommerce-cart #payment div.payment_box ::-webkit-input-placeholder,
            .woocommerce-checkout #payment div.payment_box ::-webkit-input-placeholder {
                color: #bbb3b9
            }
            
            #add_payment_method #payment div.payment_box :-moz-placeholder,
            .woocommerce-cart #payment div.payment_box :-moz-placeholder,
            .woocommerce-checkout #payment div.payment_box :-moz-placeholder {
                color: #bbb3b9
            }
            
            #add_payment_method #payment div.payment_box :-ms-input-placeholder,
            .woocommerce-cart #payment div.payment_box :-ms-input-placeholder,
            .woocommerce-checkout #payment div.payment_box :-ms-input-placeholder {
                color: #bbb3b9
            }
            
            #add_payment_method #payment div.payment_box .woocommerce-SavedPaymentMethods,
            .woocommerce-cart #payment div.payment_box .woocommerce-SavedPaymentMethods,
            .woocommerce-checkout #payment div.payment_box .woocommerce-SavedPaymentMethods {
                list-style: none outside;
                margin: 0
            }
            
            #add_payment_method #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-new,
            #add_payment_method #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-token,
            .woocommerce-cart #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-new,
            .woocommerce-cart #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-token,
            .woocommerce-checkout #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-new,
            .woocommerce-checkout #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-token {
                margin: 0 0 .5em
            }
            
            #add_payment_method #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-new label,
            #add_payment_method #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-token label,
            .woocommerce-cart #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-new label,
            .woocommerce-cart #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-token label,
            .woocommerce-checkout #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-new label,
            .woocommerce-checkout #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-token label {
                cursor: pointer
            }
            
            #add_payment_method #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-tokenInput,
            .woocommerce-cart #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-tokenInput,
            .woocommerce-checkout #payment div.payment_box .woocommerce-SavedPaymentMethods .woocommerce-SavedPaymentMethods-tokenInput {
                vertical-align: middle;
                margin: -3px 1em 0 0;
                position: relative
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form {
                border: 0;
                padding: 0;
                margin: 1em 0 0
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number {
                font-size: 1.5em;
                padding: 8px;
                background-repeat: no-repeat;
                background-position: right .618em center;
                background-size: 32px 20px
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.visa,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.visa,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.visa,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.visa,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.visa,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.visa,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.visa,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.visa,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.visa {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/visa.svg)
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.mastercard,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.mastercard,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.mastercard,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.mastercard,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.mastercard,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.mastercard,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.mastercard,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.mastercard,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.mastercard {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/mastercard.svg)
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.laser,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.laser,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.laser,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.laser,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.laser,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.laser,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.laser,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.laser,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.laser {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/laser.svg)
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.dinersclub,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.dinersclub,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.dinersclub,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.dinersclub,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.dinersclub,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.dinersclub,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.dinersclub,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.dinersclub,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.dinersclub {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/diners.svg)
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.maestro,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.maestro,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.maestro,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.maestro,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.maestro,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.maestro,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.maestro,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.maestro,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.maestro {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/maestro.svg)
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.jcb,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.jcb,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.jcb,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.jcb,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.jcb,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.jcb,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.jcb,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.jcb,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.jcb {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/jcb.svg)
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.amex,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.amex,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.amex,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.amex,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.amex,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.amex,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.amex,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.amex,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.amex {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/amex.svg)
            }
            
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-cvc.discover,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-expiry.discover,
            #add_payment_method #payment div.payment_box .wc-credit-card-form-card-number.discover,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-cvc.discover,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-expiry.discover,
            .woocommerce-cart #payment div.payment_box .wc-credit-card-form-card-number.discover,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-cvc.discover,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-expiry.discover,
            .woocommerce-checkout #payment div.payment_box .wc-credit-card-form-card-number.discover {
                background-image: url('.GREENSHIFT_THEME_DIR.'/assets/woocommerce/images/icons/credit-cards/discover.svg)
            }
            
            #add_payment_method #payment div.payment_box span.help,
            .woocommerce-cart #payment div.payment_box span.help,
            .woocommerce-checkout #payment div.payment_box span.help {
                font-size: .857em;
                color: #767676;
                font-weight: 400
            }
            
            #add_payment_method #payment div.payment_box .form-row,
            .woocommerce-cart #payment div.payment_box .form-row,
            .woocommerce-checkout #payment div.payment_box .form-row {
                margin: 0 0 1em
            }
            
            #add_payment_method #payment div.payment_box p:last-child,
            .woocommerce-cart #payment div.payment_box p:last-child,
            .woocommerce-checkout #payment div.payment_box p:last-child {
                margin-bottom: 0
            }
            
            #add_payment_method #payment div.payment_box::before,
            .woocommerce-cart #payment div.payment_box::before,
            .woocommerce-checkout #payment div.payment_box::before {
                content: "";
                display: block;
                border: 1em solid #dfdcde;
                border-right-color: transparent;
                border-left-color: transparent;
                border-top-color: transparent;
                position: absolute;
                top: -.75em;
                left: 0;
                margin: -1em 0 0 2em
            }
            
            #add_payment_method #payment .payment_method_paypal .about_paypal,
            .woocommerce-cart #payment .payment_method_paypal .about_paypal,
            .woocommerce-checkout #payment .payment_method_paypal .about_paypal {
                float: right;
                line-height: 52px;
                font-size: .83em
            }
            
            #add_payment_method #payment .payment_method_paypal img,
            .woocommerce-cart #payment .payment_method_paypal img,
            .woocommerce-checkout #payment .payment_method_paypal img {
                max-height: 52px;
                vertical-align: middle
            }';
        }
        $output .='</style>';
        return apply_filters('greenshift_generate_incss_filter', $output );
    } 
}
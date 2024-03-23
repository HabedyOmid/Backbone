<?php
/**
 * This file adds functions to the Greenshift theme for WordPress.
 *
 * @package Greenshift
 * @author  Wpsoul
 * @license GNU General Public License v2 or later
 * @link    https://theme.greenshiftwp.com/
 */

if ( !defined( 'GREENSHIFT_THEME_VERSION' ) ) {
	define('GREENSHIFT_THEME_VERSION', '2.0.4');
}
if ( !defined( 'GREENSHIFT_THEME_DIR' ) ) {
	define('GREENSHIFT_THEME_DIR', get_template_directory_uri());
}
if ( !defined( 'GREENSHIFT_THEME_PATH' ) ) {
	define('GREENSHIFT_THEME_PATH', get_template_directory());
}
add_filter( 'should_load_separate_core_block_assets', '__return_true' );


//////////////////////////////////////////////////////////////////
// Register assets
//////////////////////////////////////////////////////////////////

add_action('init', 'greenshift_theme_register_assets');
function greenshift_theme_register_assets(){

	//Main styles
	wp_register_style( 'greenshift-style', GREENSHIFT_THEME_DIR . '/assets/style.min.css', array(), GREENSHIFT_THEME_VERSION );

	//Conditional scripts

	//Sticky header
	wp_register_script('greenshift-stickyheader', GREENSHIFT_THEME_DIR . '/assets/sticky/index.min.js', array(), GREENSHIFT_THEME_VERSION, true);

	//Floating search
	wp_register_script('greenshift-floating-search', GREENSHIFT_THEME_DIR . '/assets/floatingsearch/index.min.js', array(), GREENSHIFT_THEME_VERSION, true);
	wp_register_style('greenshift-floating-search', GREENSHIFT_THEME_DIR . '/assets/floatingsearch/style.css', array(), GREENSHIFT_THEME_VERSION);

	//menu
	wp_register_script('greenshift-mega-menu', GREENSHIFT_THEME_DIR . '/assets/menu/index.min.js', array(), GREENSHIFT_THEME_VERSION, true);

	//Page progressbar
	wp_register_script('greenshift-progressbar', GREENSHIFT_THEME_DIR . '/assets/progressbar/index.min.js', array(), GREENSHIFT_THEME_VERSION, true);

	//TO TOP
	wp_register_script('greenshift-totop-init', GREENSHIFT_THEME_DIR . '/assets/totop/index.min.js', array(), GREENSHIFT_THEME_VERSION, true);

	//Core styles
	wp_register_style('greenshift_core_separator', GREENSHIFT_THEME_DIR . '/assets/coreblocks/separator.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_button', GREENSHIFT_THEME_DIR . '/assets/coreblocks/button.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_author', GREENSHIFT_THEME_DIR . '/assets/coreblocks/author.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_code', GREENSHIFT_THEME_DIR . '/assets/coreblocks/code.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_comments', GREENSHIFT_THEME_DIR . '/assets/coreblocks/comments.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift-comment-query', GREENSHIFT_THEME_DIR . '/assets/coreblocks/commentquery.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift-minicart', GREENSHIFT_THEME_DIR . '/assets/coreblocks/minicart.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_navigation', GREENSHIFT_THEME_DIR . '/assets/coreblocks/navigation.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_pullquote', GREENSHIFT_THEME_DIR . '/assets/coreblocks/pullquote.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_quote', GREENSHIFT_THEME_DIR . '/assets/coreblocks/quote.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_table', GREENSHIFT_THEME_DIR . '/assets/coreblocks/table.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_query', GREENSHIFT_THEME_DIR . '/assets/coreblocks/query.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_search', GREENSHIFT_THEME_DIR . '/assets/coreblocks/search.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_querypagination', GREENSHIFT_THEME_DIR . '/assets/coreblocks/querypagination.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift_core_postnavigation', GREENSHIFT_THEME_DIR . '/assets/coreblocks/postnavigation.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift-mega-menu', GREENSHIFT_THEME_DIR . '/assets/coreblocks/megamenu.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift-columnedmega-menu', GREENSHIFT_THEME_DIR . '/assets/coreblocks/columnedmegamenu.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift-ajaxmega-menu', GREENSHIFT_THEME_DIR . '/assets/coreblocks/ajaxmegamenu.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift-woofilters', GREENSHIFT_THEME_DIR . '/assets/coreblocks/woofilters.css', array(), GREENSHIFT_THEME_VERSION);
	wp_register_style('greenshift-woocheckout', GREENSHIFT_THEME_DIR . '/assets/coreblocks/checkout.css', array(), GREENSHIFT_THEME_VERSION);

}


//////////////////////////////////////////////////////////////////
// Register theme support functions
//////////////////////////////////////////////////////////////////

add_action( 'after_setup_theme', 'greenshift_theme_setuphooks' );
if ( ! function_exists( 'greenshift_theme_setuphooks' ) ) {
	function greenshift_theme_setuphooks() {

		// Make theme available for translation.
		load_theme_textdomain( 'greenshift', GREENSHIFT_THEME_PATH . '/languages' );

		//responsive iframes
		add_theme_support( 'responsive-embeds' );

		// Add support for Block Styles.
		add_theme_support( 'wp-block-styles' );

		// Add support for editor styles.
		add_theme_support( 'editor-styles' );

		// Enqueue editor styles and fonts.
		add_editor_style(
			array(
				'./assets/editor.css'
			)
		);

		//WP supports
		add_theme_support(
			'html5',
			[
				'search-form',
				'comment-form',
				'comment-list',
			]
		);

		// Remove core block patterns.
		remove_theme_support( 'core-block-patterns' );

		//add conditional assets to core blocks
		wp_enqueue_block_style( 'core/separator', array('handle'=>'greenshift_core_separator', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/separator.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		//wp_enqueue_block_style( 'core/button', array('handle'=>'greenshift_core_button', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/button.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/post-author', array('handle'=>'greenshift_core_author', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/author.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/code', array('handle'=>'greenshift_core_code', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/code.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/preformatted', array('handle'=>'greenshift_core_code', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/code.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/comments', array('handle'=>'greenshift_core_comments', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/comments.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/comments-query-loop', array('handle'=>'greenshift-comment-query', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/commentquery.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/navigation', array('handle'=>'greenshift_core_navigation', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/navigation.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/pullquote', array('handle'=>'greenshift_core_pullquote', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/pullquote.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/quote', array('handle'=>'greenshift_core_quote', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/quote.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/table', array('handle'=>'greenshift_core_table', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/table.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/query', array('handle'=>'greenshift_core_query', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/query.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/search', array('handle'=>'greenshift_core_search', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/search.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/query-pagination-numbers', array('handle'=>'greenshift_core_querypagination', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/querypagination.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'core/post-navigation-link', array('handle'=>'greenshift_core_postnavigation', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/postnavigation.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'woocommerce/mini-cart-contents', array('handle'=>'greenshift-minicart', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/minicart.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'woocommerce/filter-wrapper', array('handle'=>'greenshift-woofilters', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/woofilters.css', 'version'=> GREENSHIFT_THEME_VERSION) );
		wp_enqueue_block_style( 'woocommerce/checkout', array('handle'=>'greenshift-woofilters', 'path'=>GREENSHIFT_THEME_PATH .'/assets/coreblocks/checkout.css', 'version'=> GREENSHIFT_THEME_VERSION) );

	}
}


//////////////////////////////////////////////////////////////////
//Assets Render
//////////////////////////////////////////////////////////////////

// Frontend assets
add_action( 'wp_enqueue_scripts', 'greenshift_theme_enqueue_style_sheet' );
function greenshift_theme_enqueue_style_sheet() {

	//global styles
	wp_enqueue_style( 'greenshift-style');

}

// Editor assets
add_action('enqueue_block_editor_assets', 'greenshift_theme_editor_assets');
function greenshift_theme_editor_assets()
{

	$index_asset_file = include(GREENSHIFT_THEME_PATH . '/build/index.asset.php');

	wp_register_script(
		'greenshifttheme-editor-js', // Handle.
		GREENSHIFT_THEME_DIR . '/build/index.js',
		$index_asset_file['dependencies'],
		$index_asset_file['version'],
		true
	);
	wp_set_script_translations('greenshifttheme-editor-js', 'greenshift');
	wp_enqueue_script('greenshifttheme-editor-js');


	if (isset($GLOBALS['pagenow']) && $GLOBALS['pagenow'] == 'site-editor.php') {
		// gspb library script
		wp_register_script(
			'greenShifttheme-site-editor-js',
			GREENSHIFT_THEME_DIR . '/build/settings.js',
			array('wp-blocks', 'wp-i18n', 'wp-element', 'wp-editor', 'wp-data', 'wp-plugins', 'wp-edit-site'),
			$index_asset_file['version'],
			false
		);
		wp_set_script_translations('greenShifttheme-site-editor-js', 'greenshift');
		wp_enqueue_script('greenShifttheme-site-editor-js');
		wp_localize_script(
			'greenShifttheme-site-editor-js',
			'greenShift_theme_params',
			array(
				'themedir' => GREENSHIFT_THEME_DIR,
			)
		);
	}

}


//////////////////////////////////////////////////////////////////
//Includes
//////////////////////////////////////////////////////////////////

// Include block styles.
require GREENSHIFT_THEME_PATH . '/inc/block-styles.php';

// Include block patterns.
require GREENSHIFT_THEME_PATH . '/inc/block-patterns.php';

// Include Woocommerce
if (class_exists('Woocommerce')) {
require GREENSHIFT_THEME_PATH . '/inc/woocommerce/functions.php';
}


//////////////////////////////////////////////////////////////////
// Filters
//////////////////////////////////////////////////////////////////

//Default blank template
add_filter( 'block_editor_settings_all', function( $settings ) {
    $settings['defaultBlockTemplate'] = '
	<!-- wp:template-part {"slug":"header","tagName":"header","className":"site-header", "theme":"greenshift"} /-->
	<!-- wp:group {"tagName":"main","style":{"spacing":{"padding":{"top":"50px","bottom":"50px","right":"0","left":"0"},"margin":{"top":"0","bottom":"0"}}},"backgroundColor":"contrastcolor","textColor":"basecolor","className":"site-content"} -->
<main class="wp-block-group site-content has-basecolor-color has-contrastcolor-background-color has-text-color has-background" style="margin-top:0;margin-bottom:0;padding-top:50px;padding-right:0;padding-bottom:50px;padding-left:0">
		<!-- wp:group {"layout":{"inherit":true}} -->
		<div class="wp-block-group">
			<!-- wp:post-title {"level":1,"fontSize":"x-large"} /-->
		</div>
		<!-- /wp:group -->
		<!-- wp:post-content {"align":"full","layout":{"inherit":true}} /-->
	</main>
	<!-- /wp:group -->
	<!-- wp:template-part {"slug":"footer","tagName":"footer","className":"site-footer is-style-no-margin", "theme":"greenshift"} /-->
';
	return $settings;
});

require_once dirname( __FILE__ ) . '/inc/admin_menu/index.php';
<?php

//
// setup WP block support
//
if ( ! function_exists( 'backbone_theme' ) ) :
  function backbone_theme() {

		// Add support for block styles.
		add_theme_support( 'wp-block-styles' );

		// Enqueue editor styles.
		add_editor_style( 'style.css' );
	}
endif;
add_action( 'after_setup_theme', 'backbone_theme' );


//
// Styles
//
if ( ! function_exists( 'backbone_styles' ) ) :
  function backbone_styles() {
    $version = wp_get_theme('Version');
    wp_enqueue_style('style', get_stylesheet_uri(), array(), wp_get_theme()->get('Version'));
  }
endif;
add_action('wp_enqueue_scripts', 'backbone_styles');


//
// JavaScripts
//
if ( ! function_exists( 'backbone_scripts' ) ) :
  function backbone_scripts()
  {
    $version = wp_get_theme('Version');
    wp_register_script('isotope-masonry', 'https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js', array(), wp_get_theme()->get('Version'), true);
    wp_register_script('custom', get_template_directory_uri() . '/app.js', array(), wp_get_theme()->get('Version'), true);
    wp_enqueue_script('isotope-masonry');
    wp_enqueue_script('custom');
  }
endif;
add_action('wp_enqueue_scripts', 'backbone_scripts');


function my_scripts() {
// other scripts
}
add_action( 'wp_enqueue_scripts', 'my_scripts' );

//
// Disable blocks
//
add_filter( 'allowed_block_types_all', 'backbone_allow_blocks', 25, 2 );
function backbone_allow_blocks( $allowed_blocks, $editor_context ) {
	return array(
		'core/image',
		'core/paragraph',
		'core/heading',
		'core/list',
		'core/list-item',
    'core/heading',
    'core/list',  
    'core/list-item',
    // 'core/preformatted',
    // 'core/pullquote',
    'core/table',
    // 'core/verse',
    'core/image',
    'core/gallery',
    // 'core/audio',
    'core/cover',
    // 'core/file',
    'core/media-text',
    // 'core/video',
    'core/buttons',
    'core/columns',
    'core/group',
    'core/row',
    'core/stack',
    // 'core/more',
    // 'core/nextpage',
    // 'core/separator',
    'core/spacer',
    'core/archives',
    // 'core/calendar',
    'core/categories',
    // 'core/html',
    'core/latest-comments',
    // 'core/latest-posts',
    // 'core/page-list',
    // 'core/rss',
    'core/search',
    // 'core/shortcode',
    // 'core/social-links',
    // 'core/tag-cloud',
    'core/navigation',
    'core/site-logo',
    'core/site-title',
    // 'core/site-tagline',
    'core/query',
    // 'core/posts-list',
    // 'core/avatar',
    'core/post-title',
    'core/post-excerpt',
    'core/post-featured-image',
    'core/post-content',
    'core/post-author',
    'core/post-date',
    'core/post-terms',
    'core/post-navigation-link',
    // 'core/read-more',
    'core/comments-query-loop',
    'core/post-comments-form',
    // 'core/loginout',
    // 'core/term-description',
    'core/query-title',
    // 'core/post-author-biography',
    // 'core/embed',
	);
}
<?php

//
// Enable REST API
//
wp_localize_script('wp-api', 'wpApiSettings', 
  array( 'root' => 
    esc_url_raw( rest_url() ), 
    'nonce' => wp_create_nonce( 'wp_rest' ) 
  ) 
);
wp_enqueue_script('wp-api');


//
// add block support
//
if ( ! function_exists( 'backbone_theme' ) ) :
  function backbone_theme() {
		add_theme_support( 'wp-block-styles' );
		add_editor_style( 'style.css' );
	}
endif;
add_action( 'after_setup_theme', 'backbone_theme' );


//
// add menu support
//
function backbone_add_menus() {
  register_nav_menus(
    array(
      'header' => __( 'Header' ),
      'footer' => __( 'Footer' )
    )
  );
}
add_action( 'init', 'backbone_add_menus' );


//
// styles
//
if ( ! function_exists( 'backbone_styles' ) ) :
  function backbone_styles() {
    $version = wp_get_theme('Version');
    wp_enqueue_style('style', get_stylesheet_uri(), array(), wp_get_theme()->get('Version'));
  }
endif;
add_action('wp_enqueue_scripts', 'backbone_styles');


//
// scripts
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


//
// disable default patterns
//
remove_theme_support ( 'core-block-patterns' );


//
// Disable blocks
//
add_filter( 'allowed_block_types', 'backbone_allow_blocks', 21, 2 );
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
    'core/table',
    'core/image',
    'core/gallery',
    'core/cover',
    'core/media-text',
    'core/buttons',
    'core/columns',
    'core/group',
    'core/row',
    'core/stack',
    'core/spacer',
    'core/archives',
    'core/categories',
    'core/latest-comments',
    'core/search',
    'core/navigation',
    'core/site-logo',
    'core/site-title',
    'core/query',
    'core/post-title',
    'core/post-excerpt',
    'core/post-featured-image',
    'core/post-content',
    'core/post-author',
    'core/post-date',
    'core/post-terms',
    'core/post-navigation-link',
    'core/comments-query-loop',
    'core/post-comments-form',
    'core/query-title',

    // 'core/read-more',
    // 'core/posts-list',
    // 'core/avatar',
    // 'core/loginout',
    // 'core/term-description',
    // 'core/post-author-biography',
    // 'core/embed',
    // 'core/verse',
    // 'core/audio',
    // 'core/preformatted',
    // 'core/pullquote',
    // 'core/more',
    // 'core/nextpage',
    // 'core/separator',
    // 'core/shortcode',
    // 'core/social-links',
    // 'core/tag-cloud',
    // 'core/site-tagline',
    // 'core/html',
    // 'core/calendar',
    // 'core/video',
    // 'core/file',
    // 'core/latest-posts',
    // 'core/page-list',
    // 'core/rss',
	);
}
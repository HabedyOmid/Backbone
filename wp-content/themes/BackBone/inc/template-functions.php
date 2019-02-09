<?php

//
// Adds custom classes to the array of body classes.
// 
function backbone_body_classes( $classes ) {
	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}

	// Adds a class of no-sidebar when there is no sidebar present.
	if ( ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = 'no-sidebar';
	}

	return $classes;
}
add_filter( 'body_class', 'backbone_body_classes' );


//
// Add a pingback url auto-discovery header for single posts, pages, or attachments.
// 
function backbone_pingback_header() {
	if ( is_singular() && pings_open() ) {
		echo '<link rel="pingback" href="', esc_url( get_bloginfo( 'pingback_url' ) ), '">';
	}
}
add_action( 'wp_head', 'backbone_pingback_header' );


//
// Get Post Type
// 
function is_post_type($type){
    global $wp_query;
    if($type == get_post_type($wp_query->post->ID)) return true;
    return false;
}


//
// Post navigation
// 
function backbone_the_post_navigation( $args = array() ) {
   $args = wp_parse_args( $args, array(
        'prev_text'                  => __( '%title' ),
        'next_text'                  => __( '%title' ),
        'in_same_term'               => false,
        'taxonomy'                   => __( 'post_tag' ),
        'screen_reader_text' => __( 'Continue Reading' ),
    ) );
 
    $navigation = '';
 
    $previous = get_previous_post_link(
       '<div class="nav-previous">
            <h4> %link </h4>
        </div>',
        $args['prev_text'],
        $args['in_same_term'],
        $args['taxonomy']
    );
 
    $next = get_next_post_link(
        '<div class="nav-next">
            <h4> %link </h4>
        </div>',
        $args['next_text'],
        $args['in_same_term'],
        $args['taxonomy']
    );
 
    // Only add markup if there's somewhere to navigate to.
    if ( $previous || $next ) {
        $navigation = _navigation_markup( $previous . $next, 'post-navigation', $args['screen_reader_text'] );
    }
 
    echo $navigation;
}


//
// Advance Numeric Pagination
// 
function advance_numeric_pagination( $custom_query ) {
    $total_pages = $custom_query->max_num_pages;
    $big = 999999999; // need an unlikely integer

    if ($total_pages > 1){
        $current_page = max(1, get_query_var('paged'));
        echo paginate_links(array(
            'prev_text' => __( '<svg version="1.2" baseProfile="tiny" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 459 306" xml:space="preserve"><g><g id="keyboard-backspace"><polygon points="459,127.5 96.9,127.5 188.7,35.7 153,0 0,153 153,306 188.7,270.3 96.9,178.5 459,178.5 "/></g></g></svg>' ),

            'next_text' => __( '<svg version="1.2" baseProfile="tiny" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 459 306" xml:space="preserve"><g><g id="keyboard-backspace"><polygon points="0,178.5 362.1,178.5 270.3,270.3 306,306 459,153 306,0 270.3,35.7 362.1,127.5 0,127.5 "/></g></g></svg>' ),
            
            'base'      => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
            'format'    => '?paged=%#%',
            'current'   => $current_page,
            'total'     => $total_pages,
        ));
    }
}


//
// Add SVG support
//
function cc_mime_types($mimes) {
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');


//
// Remove jQuery Migrate File
// 
function dequeue_jquery_migrate( &$scripts){
    if(!is_admin()){
        $scripts->remove( 'jquery');
    }
}
add_filter( 'wp_default_scripts', 'dequeue_jquery_migrate' );


//
// Theme Settings
// 
if( function_exists('acf_add_options_page') ) {
    acf_add_options_page(array(
        'page_title'    => 'Theme General Settings',
        'menu_title'    => 'Theme Settings',
        'menu_slug'     => 'theme-general-settings',
        'capability'    => 'edit_posts',
        'redirect'      => false
    ));
    
    acf_add_options_sub_page(array(
        'page_title'    => 'Theme Footer Settings',
        'menu_title'    => 'Footer',
        'parent_slug'   => 'theme-general-settings',
    ));
}

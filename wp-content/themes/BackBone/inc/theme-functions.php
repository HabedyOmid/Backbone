<?php


if ( ! function_exists( 'backbone_setup' ) ) :

	function backbone_setup() {
		
		load_theme_textdomain( 'backbone', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		add_theme_support( 'title-tag' );

		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'primary-menu' => esc_html__( 'Primary', 'backbone' ),
		) );

		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'backbone_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'backbone_setup' );


//
// Register widget area.
//
function backbone_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'backbone' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'backbone' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'backbone_widgets_init' );



//
// Stylesheets
//
function load_stylesheets()
{
	wp_register_style('stylesheet', get_template_directory_uri() . '/style.css', '', 1, 'all');
	wp_enqueue_style('stylesheet');
}
add_action('wp_enqueue_scripts', 'load_stylesheets');


//
// JavaScripts
//
function load_javaScripts()
{
	wp_register_script('custom', get_template_directory_uri() . '/app.js', '', 1, true);
	wp_enqueue_script('custom');
}
add_action('wp_enqueue_scripts', 'load_javaScripts');



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
// Remove jQuery Migrate File - Front-end ONLY
// 
function dequeue_jquery_migrate( &$scripts){
    if(!is_admin()){
        $scripts->remove( 'jquery');
    }
}
add_filter( 'wp_default_scripts', 'dequeue_jquery_migrate' );




//
// ACF Theme Settings
// 
if( function_exists('acf_add_options_page') ) {
    acf_add_options_page(array(
        'page_title'    => 'Theme General Settings',
        'menu_title'    => 'Site Options',
        'menu_slug'     => 'theme-general-settings',
        'capability'    => 'edit_posts',
        'redirect'      => false
    ));
}


//
// Change Admin Login LOGO
function my_login_logo() {  $upload_dir = wp_upload_dir();  ?>
    <style type="text/css"> 
        #login h1 a,
        .login h1 a{
            background-image: url(<?php echo $upload_dir['url'] . '/admin_logo.png'; ?>);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            width: 90px;
            height: 90px;
            border-radius: 50%;
            background-repeat: no-repeat;
            margin-bottom: 30px;
            display: block;
            margin: 0 auto;
            border: 5px solid #fff;
            margin-bottom: 25px;
        }
        /*remember me radio button*/
        .forgetmenot{
            margin-bottom: 20px !important;
        }
        /*Full width button*/
        .wp-core-ui .button-primary,
        .wp-core-ui .button-primary{
            width: 100%;
            display: block;
            padding: 6px !important;
            height: auto !important;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-radius: 0px !important;
        }

        #login #nav a,
        #login #backtoblog a{
            display: block;
            width: 100%;
            text-align: center;
        }
    </style>
<?php }
add_action( 'login_enqueue_scripts', 'my_login_logo' );




//
// Get Image Different Sizes by ID
//
function get_image_src($id, $size = "lg") {    
    $img = wp_get_attachment_metadata($id, TRUE); 
    $path = wp_upload_dir();

    if($size == 'sm'){
        $src = $path['url'] . "/" . $img['sizes']['medium']['file'];
        return $src;

    }elseif($size == 'md'){
        $src = $path['url'] . "/" . $img['sizes']['medium_large']['file'];
        return $src;

    }elseif($size == 'lg'){
        $src = $path['url'] . "/" . $img['sizes']['large']['file'];
        return $src;

    }elseif($size == 'full'){
        $src = $path['url'] . "/" . $img['file'];
        return $src;

    }else{
        return "Make sure to add ID and SIZE 'PARAMS'";
    }
}





//
// Image ALT by ID
//
function get_image_alt_by_id( $attachment_ID ) {

    // Get ALT
    $thumb_alt = get_post_meta( $attachment_ID, '_wp_attachment_image_alt', true );
    
    // No ALT supplied get attachment info
    if ( empty( $thumb_alt ) )
        $attachment = get_post( $attachment_ID );
    
    // Use caption if no ALT supplied
    if ( empty( $thumb_alt ) )
        $thumb_alt = $attachment->post_excerpt;
    
    // Use title if no caption supplied either
    if ( empty( $thumb_alt ) )
        $thumb_alt = $attachment->post_title;
 
    // Return ALT
    return esc_attr( trim( strip_tags( $thumb_alt ) ) );
}
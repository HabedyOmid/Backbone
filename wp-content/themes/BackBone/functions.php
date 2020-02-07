<?php
//
// BackBone functions and definitions
// @link https://developer.wordpress.org/themes/basics/theme-functions/
//

//
// Functions which enhance the theme by hooking into WordPress.
//
require get_template_directory() . '/inc/theme-functions.php';


//
// Bootstrap Navigation
//
require get_template_directory() . '/inc/wp-bootstrap-navwalker.php';


//
// Implement the Custom Header feature.
//
require get_template_directory() . '/inc/custom-header.php';


//
// Customizer additions.
//
require get_template_directory() . '/inc/customizer.php';


//
// Load Jetpack compatibility file.
//
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}
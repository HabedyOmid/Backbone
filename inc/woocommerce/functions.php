<?php
/**
 * Greenshift: Woocommerce
 *
 * @since Greenshift 1.0
 */

add_theme_support( 'woocommerce');

//////////////////////////////////////////////////////////////////
// WooCommerce Assets
//////////////////////////////////////////////////////////////////

add_action('init', 'greenshift_theme_register_woo_assets');
add_filter( 'woocommerce_enqueue_styles', '__return_empty_array' );
add_action('wp_enqueue_scripts', 'greenshift_woo_enqueue', 11);
add_action( 'enqueue_block_assets', 'gs_load_custom_style_on_woocommerce_product_edit' );

function greenshift_theme_register_woo_assets(){

    wp_register_style('woocommerce-general', GREENSHIFT_THEME_DIR . '/assets/woocommerce/css/woocommerce.css', array(), GREENSHIFT_THEME_VERSION);
    wp_style_add_data( 'woocommerce-general', 'rtl', 'replace' );

    wp_register_style('woocommerce-smallscreen', GREENSHIFT_THEME_DIR . '/assets/woocommerce/css/woocommerce-smallscreen.css', array('woocommerce-general'), GREENSHIFT_THEME_VERSION, 'only screen and (max-width: ' . apply_filters( 'woocommerce_style_smallscreen_breakpoint', '768px' ) . ')');
    wp_style_add_data( 'woocommerce-layout', 'rtl', 'replace' );

	wp_register_style('greenshift-woo-single', GREENSHIFT_THEME_DIR . '/assets/woocommerce/css/woosingle.css', array('woocommerce-general'), GREENSHIFT_THEME_VERSION);
    wp_style_add_data( 'greenshift-woo-single', 'rtl', 'replace' );

    wp_register_style('greenshift-quantity', GREENSHIFT_THEME_DIR . '/assets/qty/style.css', array(), GREENSHIFT_THEME_VERSION);
    wp_register_script('greenshift-quantity', GREENSHIFT_THEME_DIR . '/assets/qty/index.min.js', array(), GREENSHIFT_THEME_VERSION, true);
	
    wp_register_style('greenshift-woo-comments', GREENSHIFT_THEME_DIR . '/assets/woocommerce/css/woocomments.css', array('woocommerce-general'), GREENSHIFT_THEME_VERSION);

	wp_register_style('greenshift-woo-singlefix', GREENSHIFT_THEME_DIR . '/assets/woocommerce/css/woosinglefix.css', array('woocommerce-general'), GREENSHIFT_THEME_VERSION);

}

if (!function_exists('greenshift_woo_enqueue')){
    function greenshift_woo_enqueue() {   

        wp_enqueue_style( 'woocommerce-general');
        wp_enqueue_style( 'greenshift-quantity');
        wp_enqueue_script( 'greenshift-quantity');

		if(is_singular('product')){
			wp_enqueue_style('greenshift-woo-single');
		} 

        wp_enqueue_style( 'woocommerce-smallscreen');
    } 
}

function gs_load_custom_style_on_woocommerce_product_edit() {
	if(is_admin()){
		wp_enqueue_style( 'greenshift-woo-singlefix' );
	}
}


//Helpers
function greenshift_get_ratings_counts( $product ) {
    global $wpdb;
    
    $counts     = array();
    $raw_counts = $wpdb->get_results( $wpdb->prepare("
            SELECT meta_value, COUNT( * ) as meta_value_count FROM $wpdb->commentmeta
            LEFT JOIN $wpdb->comments ON $wpdb->commentmeta.comment_id = $wpdb->comments.comment_ID
            WHERE meta_key = 'rating'
            AND comment_post_ID = %d
            AND comment_approved = '1'
            AND meta_value > 0
            GROUP BY meta_value
        ", $product->get_id() ) );
    
    foreach ( $raw_counts as $count ) {
        $counts[ $count->meta_value ] = $count->meta_value_count;
    }
    
    return $counts;
}	

function fr_woo_rating_icons_html($rating, $count){
	$html = '';
	if($rating > 0){
		$rating = round($rating, 2);
		for ($i = 1; $i <= 5; $i++){
	    	if ($i <= $rating){
	    		$active = ' active';
	    	}else{
	    		$half = $i - 0.5;
	    		if($half <= $rating){
		    		$active = ' halfactive';		    			
	    		}else{
	    			$active ='';
	    		}
	    	}
	        $html .= '<span class="frwoostar frwoostar'.$i.$active.'">&#9733;</span>';
		}
	}
	return $html;
}

remove_action( 'woocommerce_cart_collaterals', 'woocommerce_cross_sell_display' );

add_action( 'woocommerce_checkout_before_order_review_heading', 'greenshift_woo_order_checkout' );
add_action( 'woocommerce_checkout_after_order_review', 'greenshift_woo_after_order_checkout' );
add_action( 'woocommerce_before_checkout_form', 'greenshift_woo_style_checkout' );

add_action( 'woocommerce_before_cart', 'greenshift_woo_style_cart' );
add_action( 'woocommerce_after_cart_table', 'woocommerce_cross_sell_display' );

function greenshift_woo_order_checkout() {
	$themesettings = get_option('greenshift_theme_options');
	if(empty($themesettings['disableCheckout'])){
		echo '<div class="re_woocheckout_order">';
	}
}
function greenshift_woo_after_order_checkout() {
	$themesettings = get_option('greenshift_theme_options');
	if(empty($themesettings['disableCheckout'])){
		echo '</div><div class="clearfix"></div>';
	}
}
function greenshift_woo_style_checkout() {
	$themesettings = get_option('greenshift_theme_options');
	if(empty($themesettings['disableCheckout'])){
    	echo greenshift_generate_incss('checkoutcart');
		echo greenshift_generate_incss('woocheckout');
	}
}
function greenshift_woo_style_cart() {
	$themesettings = get_option('greenshift_theme_options');
	if(empty($themesettings['disableCart'])){
		echo greenshift_generate_incss('checkoutcart');
		echo greenshift_generate_incss('woocart');
	}
}


// pros and cons in comment form
add_filter('woocommerce_product_review_comment_form_args', 'greenshift_add_woo_pros_cons_form_fields');
function greenshift_add_woo_pros_cons_form_fields($comment_form){
	if ( get_option( 'woocommerce_enable_review_rating' ) === 'yes' ) {
 		global $product;
 		$productid = $product->get_id();
		$userid = get_current_user_id();
		$commented = get_user_meta($userid, '_added_woo_pros_cons', true);
		if(empty($commented) || !is_array($commented)){
			$flagged = false;
		}elseif(in_array($productid, $commented)){
			$flagged = true;
		}else{
			$flagged = false;
		}

		if(!$flagged){
			$comment_form['comment_field'] .= '<div class="woo_pros_cons_form"><style scoped>.woo_pros_cons_form{display:flex; width:100%; column-gap:20px;}.woo_pros_cons_form > div{width:50%}@media (max-width:500px){.woo_pros_cons_form > div{width:100%}.woo_pros_cons_form{flex-wrap:wrap}}</style><div class="comment-form-comment gs-one-half"><textarea id="pos_comment" name="pos_comment" rows="6" placeholder="'.esc_html__('PROS:', 'greenshift').'"></textarea></div><div class="comment-form-comment gs-one-half"><textarea id="neg_comment" name="neg_comment" rows="6" placeholder="'.esc_html__('CONS:', 'greenshift').'"></textarea></div></div>';
		}
	}
	return $comment_form;
}

// Save Negative, positive
function greenshift_add_neg_comment( $comment_id ){
	if ( isset($_POST['comment_post_ID']) && (!empty( $_POST['neg_comment']) || !empty($_POST['pos_comment'])) && 'product' === get_post_type( absint( $_POST['comment_post_ID'] ) ) ) {
		if(!empty($_POST['neg_comment'])){
			add_comment_meta( $comment_id, 'neg_comment', sanitize_textarea_field( $_POST['neg_comment'] ), true );
		}
		if(!empty($_POST['pos_comment'])){
			add_comment_meta( $comment_id, 'pos_comment', sanitize_textarea_field( $_POST['pos_comment'] ), true );
		}
		$comment = get_comment( $comment_id );
		$userid = $comment->user_id;
		$postid = $comment->comment_post_ID;
		$commented = get_user_meta($userid, '_added_woo_pros_cons', true);
		if(empty($commented) || !is_array($commented)){
			$commented = array();
		}
		$commented[] = $postid;
		add_user_meta($userid, '_added_woo_pros_cons', $commented, true);	
	}
}
add_action( 'comment_post', 'greenshift_add_neg_comment' );

// pros and cons in comment text
function greenshift_wc_comment_neg_get( $comment ) {
	$out = '';
	$pros_review = get_comment_meta( $comment->comment_ID, 'pos_comment', true );
	$cons_review = get_comment_meta( $comment->comment_ID, 'neg_comment', true );
	if($pros_review || $cons_review){$out .='<div class="woo-pros-cons-comm"><style scoped>.woo-pros-cons-comm > div.gs-one-half{flex:50%}@media (min-width:500px){.woo-pros-cons-comm{display:flex; column-gap:20px}}:</style>';}
	$classcol = (!empty($cons_review) && !empty($pros_review)) ? 'gs-one-half ' : '';
	if(isset($pros_review) && $pros_review != '') {
		$pros_reviews = explode(PHP_EOL, $pros_review);
		$proscomment = '';
		foreach ($pros_reviews as $pros) {
			$proscomment .='<span class="pros_comment_item" style="display:block; margin-bottom:5px">'.$pros.'</span>';
		}
		$out .='<div class="'.$classcol.'woo_comment_text_pros" style="background-color: #eaf9e8; padding:20px; line-height:20px; font-size:90%; margin-top:15px"><span style="display:block; margin-bottom:10px; font-weight:bold">'.__('+ PROS:', 'greenshift').' </span><span> '.$proscomment.'</span></div>';
	};
	if(isset($cons_review) && $pros_review != '') {
		$cons_reviews = explode(PHP_EOL, $cons_review);
		$conscomment = '';
		foreach ($cons_reviews as $cons) {
			$conscomment .='<span class="cons_comment_item" style="display:block; margin-bottom:5px">'.$cons.'</span>';
		}
		$out .='<div class="'.$classcol.'woo_comment_text_cons" style="background-color:#fff4f4; padding:20px; line-height:20px; font-size:90%; margin-top:15px"><span style="display:block; margin-bottom:10px; font-weight:bold">'.__('- CONS:', 'greenshift').' </span><span> '.$conscomment.'</span></div>';
	};	
	if($pros_review || $cons_review){$out .= '</div>';}
	return $out;
}
function greenshift_wc_comment_neg( $comment ) {
	echo greenshift_wc_comment_neg_get($comment);
}
add_action( 'woocommerce_review_comment_text', 'greenshift_wc_comment_neg', 12 );

add_action( 'add_meta_boxes', 'greenshift_add_pros_meta_to_panel', 35 );

function greenshift_add_pros_meta_to_panel(){
    add_meta_box( 'greenshift_woo_pros_section_edit_comment', esc_html__( "Pros and Cons", "greenshift" ), 'greenshift_woo_cm_edit_pros_cons', 'comment', 'normal' );
}
//Render pros, cons in Comment Edit screen
function greenshift_woo_cm_edit_pros_cons($comment){
	if ( !isset( $comment->comment_ID ) ) return;
 	if ( !isset( $comment->comment_post_ID ) ) return;
	$post_id = $comment->comment_post_ID;
	$post_type = get_post_type( $post_id );
	if($post_type !=='product') return;
	$pos_comment = get_comment_meta( $comment->comment_ID, 'pos_comment', true );
	$neg_comment = get_comment_meta( $comment->comment_ID, 'neg_comment', true );
	$prosconsRow ='';	
	if( !empty($pos_comment) || !empty($neg_comment) ) {
		$prosconsRow .= '<tr><td colspan="2"><label for="pos_comment">';
		$prosconsRow .= esc_html__('+ PROS:', 'greenshift');
		$prosconsRow .= '</label><br /><textarea id="pos_comment" name="pos_comment" rows="5" cols="50">';
		$prosconsRow .= esc_attr( $pos_comment );
		$prosconsRow .= '</textarea></td><td colspan="2"><label for="neg_comment">';
		$prosconsRow .= esc_html__('- CONS:', 'greenshift');
		$prosconsRow .= '</label><br /><textarea id="neg_comment" name="neg_comment" rows="5" cols="50">';
		$prosconsRow .= esc_attr( $neg_comment );
		$prosconsRow .= '</textarea></td></tr>';
	}	
	if($prosconsRow){
		echo '<fieldset>',
		'<table class="form-table editcomment">',
			'<tbody>',
				$prosconsRow,
			'</tbody></table><br>',
		'</fieldset>';
	}

}

//Save pros cons values from Comment editor
function greenshift_wc_neg_comment_save( $data ) {
	if ( ! isset($_POST['neg_comment'], $_POST['pos_comment'] ) )
		return $data;
		
	if(!empty($_POST['neg_comment'])){
		update_comment_meta( $data['comment_ID'], 'neg_comment', sanitize_textarea_field( $_POST['neg_comment'] ) );
	}
	if(!empty($_POST['pos_comment'])){
		update_comment_meta( $data['comment_ID'], 'pos_comment', sanitize_textarea_field( $_POST['pos_comment'] ) );
	}	
	return $data;
}
add_filter( 'wp_update_comment_data', 'greenshift_wc_neg_comment_save', 1 );

//Add custom column for Products
function greenshift_woo_rev_comment_columns( $columns )
{
	$columns['greenshift_woo_user_review_column'] = esc_html__( 'Product Review', 'greenshift' );
	return $columns;
}
add_filter( 'manage_edit-comments_columns', 'greenshift_woo_rev_comment_columns' );

function greenshift_woo_rev_comment_column( $column, $comment_ID )
{
	if ( 'greenshift_woo_user_review_column' == $column ) {
		
	$pos_comment = get_comment_meta($comment_ID, 'pos_comment', true);
	$neg_comment = get_comment_meta($comment_ID, 'neg_comment', true);
	if(isset($pos_comment) && $pos_comment != '') {
		echo ''.__('+ PROS:', 'greenshift').' '.$pos_comment.'<br />';
	};
	if(isset($neg_comment) && $neg_comment != '') {
		echo ''.__('- CONS:', 'greenshift').' '.$neg_comment.'<br /><br />';
	};				
	echo '<br /></p>';
	}
}
add_filter( 'manage_comments_custom_column', 'greenshift_woo_rev_comment_column', 10, 2 );

add_filter( 'woocommerce_breadcrumb_defaults', 'greenshift_change_breadcrumb_delimiter' );
function greenshift_change_breadcrumb_delimiter( $defaults ) {
	// Change the breadcrumb delimeter from '/' to '>'
	$defaults['delimiter'] = '<span class="delimiter"> - </span>';
	return $defaults;
}
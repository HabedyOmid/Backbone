<?php
/**
 * Display single product reviews (comments)
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product-reviews.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     4.3.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}
global $product;

$review_count 		= $product->get_review_count();
$avg_rate_score 	= number_format( $product->get_average_rating(), 1 );
$rate_counts 		= greenshift_get_ratings_counts( $product );

if ( ! comments_open() || !function_exists('wc_review_ratings_enabled')) {
	return;
}

?>
<?php wp_enqueue_style('greenshift-woo-comments');?>
<div id="reviews" class="woocommerce-Reviews">
	<div class="gspb-rating-comments">
		<h2 class="gs-heading-icon woocommerce-Reviews-title"><?php
			$count = $product->get_review_count();
			if ($count && wc_review_ratings_enabled())
				printf( _n( '%1$s review for %2$s%3$s%4$s', '%1$s reviews for %2$s%3$s%4$s', $count, 'greenshift' ), $count, '<span style="font-weight:var(--wp--custom--font-weight--normal)">', get_the_title(), '</span>' );
			else
				esc_html_e( 'User Reviews', 'greenshift' );
		?>
		</h2>
		<div class="gs-line" style="margin-bottom:40px"></div>	
		<div class="woo-count-rating-block">
			<div class="woo-rev-part">
				<div class="woo-avg-rating">
					<span style="font-weight:bold; font-size:200%; color:#ff8a00"><?php echo ''.$avg_rate_score;?></span> <span style="color:lightgrey; font-size:90%"><?php esc_html_e('out of', 'greenshift');?> 5</span>
					<div class="clearfix"></div>
					<?php 	
						if ( 0 < $avg_rate_score ) {
							echo '<div class="fr_woo_star fr_woo_star_big" title="'.sprintf( esc_html__( 'Rated %s out of', 'greenshift' ), (float)$avg_rate_score ).' 5">';
							echo fr_woo_rating_icons_html( $avg_rate_score, $review_count);
							echo '</div>';
						} 			
					?>
				</div>				
			</div>
			<div class="woo-rev-part woo-rev-part-border">
				<div class="woo-rating-bars">
					<?php for( $rating = 5; $rating > 0; $rating-- ) : ?>
					<div class="rating-bar">
						<div class="star-rating-wrap">
							<div class="fr_woo_star" title="<?php printf( esc_html__( 'Rated %s out of 5', 'greenshift' ), $rating ); ?>">
								<?php for ($i = 1; $i <= 5; $i++){
									if ($i <= $rating){
										$active = ' active';
									}else{
										$active ='';
									}
									echo '<span class="frwoostar frwoostar'.$i.$active.'">&#9733;</span>';
									}
								?>
							</div>	

						</div>
						<?php 
							$rating_percentage = 0;
							if ( isset( $rate_counts[$rating] ) && $review_count !=0 ) {
								$rating_percentage = (round( $rate_counts[$rating] / $review_count, 2 ) * 100 );
							}
						?>
						<div class="rating-percentage-bar-wrap">
							<div class="rating-percentage-bar">
								<span style="width:<?php echo esc_attr( $rating_percentage ); ?>%" class="rating-percentage"></span>
							</div>
						</div>
						<?php if ( isset( $rate_counts[$rating] ) ) : ?>
						<div class="rating-count"><?php echo esc_html( $rate_counts[$rating] ); ?></div>
						<?php else : ?>
						<div class="rating-count zero">0</div>
						<?php endif; ?>
					</div>
					<?php endfor; ?>
				</div>		
			</div>
			<div class="woo-rev-part pl30 ml10 pr30 pt25 pb25 mobilecenterdisplay">
				<button class="wp-element-button" data-scrollto="#woo_comm_form"><?php esc_html_e('Write a review', 'greenshift');?></button>
			</div>
		</div>
		<div style="margin-bottom:20px; margin-top:40px; border-top:1px solid var(--wp--preset--color--lightborder)"></div>

		<div id="comments">
			<?php if ( have_comments() ) : ?>
				<div id="tab-1">			
					<ol class="commentlist">
						<?php wp_list_comments( apply_filters( 'woocommerce_product_review_list_args', array( 'callback' => 'woocommerce_comments' ) ) ); ?>
					</ol>
					<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) :
						echo '<nav class="woocommerce-pagination">';
						paginate_comments_links( apply_filters( 'woocommerce_comment_pagination_args', array(
							'prev_text' => '&larr;',
							'next_text' => '&rarr;',
							'type'      => 'list',
						) ) );
						echo '</nav>';
					endif; ?>				
				</div>
				<ol id="loadcomment-list" class="commentlist"></ol>

			<?php else : ?>

				<p class="woocommerce-noreviews"><?php esc_html_e( 'There are no reviews yet.', 'greenshift' ); ?></p>

			<?php endif; ?>
		</div>
	</div>

	<div id="woo_comm_form" class="gspb-rating-form">
		<?php if ( get_option( 'woocommerce_review_rating_verification_required' ) === 'no' || wc_customer_bought_product( '', get_current_user_id(), $product->get_id() ) ) : ?>

			<div id="review_form_wrapper">
				<div id="review_form">
					<?php
						$commenter = wp_get_current_commenter();

						$comment_form = array(
							'title_reply'          => have_comments() ? esc_html__( 'Add a review', 'greenshift' ) : sprintf( esc_html__( 'Be the first to review &ldquo;%s&rdquo;', 'greenshift' ), get_the_title() ),
							'title_reply_to'       => esc_html__( 'Leave a Reply', 'greenshift' ),
							'comment_notes_after'  => '',
							'fields'               => array(
								'author' => '<p class="comment-form-author">' . '<label for="author">' . esc_html__( 'Name', 'greenshift' ) . ' <span class="required">*</span></label> ' .
								            '<input id="author" name="author" type="text" value="' . esc_attr( $commenter['comment_author'] ) . '" size="30" required /></p>',
								'email'  => '<p class="comment-form-email"><label for="email">' . esc_html__( 'Email', 'greenshift' ) . ' <span class="required">*</span></label> ' .
								            '<input id="email" name="email" type="email" value="' . esc_attr(  $commenter['comment_author_email'] ) . '" size="30" required /></p>',
							),
							'label_submit'  => esc_html__( 'Submit', 'greenshift' ),
							'logged_in_as'  => '',
							'comment_field' => ''
						);

						if ( $account_page_url = wc_get_page_permalink( 'myaccount' ) ) {
							$comment_form['must_log_in'] = '<p class="must-log-in">' .  sprintf( esc_html__( 'You must be %1$s%2$s%3$s logged in %4$s to post a review.', 'greenshift' ), '<a href="', esc_url( $account_page_url ), '">', '</a>'  ) . '</p>';
						}

						if (wc_review_ratings_enabled()) {
							$usercomment = '';
							if(is_user_logged_in()){
								$currentuser = get_current_user_id();
								$usercomment = get_comments(array('user_id' => $currentuser, 'post_id' => $product->get_id()));								
							}
							else{
								$commentemail = (!empty($commenter['comment_author_email'])) ? $commenter['comment_author_email'] : '';
								if($commentemail){
									$usercomment = get_comments(array('author_email' => $commentemail, 'post_id' => $product->get_id()));				
								}								
							}
							if(empty($usercomment)){
								$comment_form['comment_field'] = '<p class="comment-form-rating"><label for="rating">' . esc_html__( 'Your Rating', 'greenshift' ) .'</label><select name="rating" id="rating" required>
									<option value="">' . esc_html__( 'Rate&hellip;', 'greenshift' ) . '</option>
									<option value="5">' . esc_html__( 'Perfect', 'greenshift' ) . '</option>
									<option value="4">' . esc_html__( 'Good', 'greenshift' ) . '</option>
									<option value="3">' . esc_html__( 'Average', 'greenshift' ) . '</option>
									<option value="2">' . esc_html__( 'Not that bad', 'greenshift' ) . '</option>
									<option value="1">' . esc_html__( 'Very Poor', 'greenshift' ) . '</option>
								</select></p>';								
							}

						}

						$comment_form['comment_field'] .= '<p class="comment-form-comment"><label for="comment">' . esc_html__( 'Your Review', 'greenshift' ) . ' <span class="required">*</span></label><textarea id="comment" name="comment" cols="45" rows="8" required></textarea></p>';

						comment_form( apply_filters( 'woocommerce_product_review_comment_form_args', $comment_form ) );
					?>
				</div>
			</div>
		<?php else : ?>
			<p class="woocommerce-verification-required"><?php esc_html_e( 'Only logged in customers who have purchased this product may leave a review.', 'greenshift' ); ?></p>
		<?php endif; ?>			

	</div>



	<div class="clear"></div>
</div>

<?php
// Exit if accessed directly.
if (!defined('ABSPATH')) {
    exit;
}
?>
<?php wp_enqueue_media(); ?>

<div class="wp-block-greenshift-blocks-container alignfull gspb_container gspb_container-gsbp-ead11204-4841" id="gspb_container-id-gsbp-ead11204-4841">
    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-cbc3fa8c-bb26" id="gspb_container-id-gsbp-cbc3fa8c-bb26">

        <?php $activetab = 'theme'; $default_tab = null; ?>
        <?php include(GREENSHIFT_DIR_PATH . 'templates/admin/navleft.php'); ?>

        <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-89d45563-1559" id="gspb_container-id-gsbp-89d45563-1559">
            <?php 
                $tab  = isset($_GET['tab']) ? sanitize_text_field($_GET['tab']) : $default_tab; 
                if ($tab == 'brand' || empty($tab)) {
                    $title = esc_html__('Brand settings', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/brand.php');
                } elseif ($tab == 'home') {
                    $title = esc_html__('HomePage settings', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/home.php');
                } elseif ($tab == 'header') {
                    $title = esc_html__('Select Header Pattern', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/header.php');
                }elseif ($tab == 'footer') {
                    $title = esc_html__('Select Footer Pattern', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/footer.php');
                }elseif ($tab == 'single') {
                    $title = esc_html__('Select Single Post template', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/single.php');
                }elseif ($tab == 'archive') {
                    $title = esc_html__('Select Archive template', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/archive.php');
                }elseif ($tab == 'singleproduct') {
                    $title = esc_html__('Select Single Product template', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/singleproduct.php');
                }elseif ($tab == 'archiveproduct') {
                    $title = esc_html__('Select archive Product template', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/archiveproduct.php');
                }elseif ($tab == 'searchproduct') {
                    $title = esc_html__('Select Search Product template', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/searchproduct.php');
                }elseif ($tab == 'pages') {
                    $title = esc_html__('Create Extra Pages', 'greenshift');
                    include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard/pages.php');
                }
            ?>

        </div>
    </div>
</div>
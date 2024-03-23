<?php
// Exit if accessed directly.
if (!defined('ABSPATH')) {
    exit;
}
if (!current_user_can('manage_options')) {
    wp_die('Unauthorized user');
}
?>
<div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-efb64efe-d083" id="gspb_container-id-gsbp-efb64efe-d083">
    <h2 id="gspb_heading-id-gsbp-ca0b0ada-6561" class="gspb_heading gspb_heading-id-gsbp-ca0b0ada-6561 "><?php echo esc_html($title); ?></h2>
</div>
<style>
    #gspb_container-id-gsbp-89d45563-1559{display: flex; flex-direction: column;}
    #gspb_container-id-gsbp-7b4f8e8f-1a69.gspb_container{flex-grow:1; display: flex;}
    #gspb_container-id-gsbp-7b4f8e8f-1a69.gspb_container form{height:100%; display: flex; justify-content: space-between; flex-direction: column;}
    .createpages-container{
        display: grid;
        grid-template: auto / 1fr 1fr;
        gap: 20px;
    }
    .page-element-outer-container{
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 10px;
        border: 1px solid #eee;
        padding: 20px;
        border-radius: 5px;
        max-width: 100%;
        overflow: hidden;
        justify-content: space-evenly;
    }
    .page-element-outer-container img{
        max-width: 100%;
        height: auto;
    }
</style>

<?php
$onboard_options = get_option('greenshift_onboard_options');
if (empty($onboard_options)) {
    $onboard_options = array();
}
if (empty($onboard_options['selected_pages'])) {
    $onboard_options['selected_pages'] = array();
}

if (
    (isset($_POST['gspb_save_settings']) || isset($_POST['gspb_save_settings_next'])) && isset($_POST['gspb_settings_field']) &&
    wp_verify_nonce(
        sanitize_text_field(wp_unslash($_POST['gspb_settings_field'])),
        'gspb_settings_page_action'
    )
) {

    if (!empty($_POST['selected_pages'])) {
        if(empty($onboard_options)){
            $onboard_options = array();
        }
        $onboard_options['selected_pages'] = greenshift_sanitize_multi_array($_POST['selected_pages']);

        $created_pages = !empty($onboard_options['created_pages']) ? $onboard_options['created_pages'] : array();

        if (
            (in_array('query', $onboard_options['selected_pages']) && !array_key_exists('query', $created_pages)) 
            || 
            (array_key_exists('query', $created_pages) && !get_permalink($created_pages['query']))
            ) {
            $content = '
            <!-- wp:group {"align":"wide","layout":{"type":"constrained"}} -->
                <div class="wp-block-group alignwide">
                <!-- wp:query {"queryId":22,"query":{"perPage":9,"pages":0,"offset":0,"postType":"post","categoryIds":[],"tagIds":[],"order":"desc","orderBy":"date","author":"","search":"","exclude":[],"sticky":"","inherit":false},"displayLayout":{"type":"flex","columns":3},"align":"wide","enhancedPagination":true,"className":"is-style-gs-brdnpaddradius"} -->
                <div class="wp-block-query alignwide is-style-gs-brdnpaddradius">
                    <!-- wp:post-template -->
                    <!-- wp:post-featured-image {"isLink":true,"height":"230px","className":"gs-hover-scale-img"} /-->

                    <!-- wp:group {"style":{"spacing":{"blockGap":"10px","padding":{"top":"8px","right":"8px","bottom":"8px","left":"8px"}}}} -->
                    <div class="wp-block-group" style="padding-top:8px;padding-right:8px;padding-bottom:8px;padding-left:8px">
                        <!-- wp:post-terms {"term":"category","separator":"  ","style":{"elements":{"link":{"color":{"text":"var:preset|color|primary"}}}},"className":"is-style-greenshift-tags-nounder","fontSize":"xsmall"} /-->

                        <!-- wp:post-title {"isLink":true,"style":{"typography":{"lineHeight":"1.4"}},"fontSize":"subheading"} /-->

                        <!-- wp:group {"style":{"spacing":{"blockGap":"8px"}},"layout":{"type":"flex","allowOrientation":false}} -->
                        <div class="wp-block-group">
                            <!-- wp:post-author {"showAvatar":false,"style":{"typography":{"fontStyle":"normal","fontWeight":"700"}},"fontSize":"xsmall"} /-->

                            <!-- wp:paragraph {"fontSize":"xsmall"} -->
                            <p class="has-xsmall-font-size">/</p>
                            <!-- /wp:paragraph -->

                            <!-- wp:post-date {"textColor":"lightgrey","fontSize":"xsmall"} /-->
                        </div>
                        <!-- /wp:group -->
                    </div>
                    <!-- /wp:group -->
                    <!-- /wp:post-template -->

                    <!-- wp:spacer {"height":"50px"} -->
                        <div style="height:50px" aria-hidden="true" class="wp-block-spacer"></div>
                    <!-- /wp:spacer -->

                    <!-- wp:query-pagination {"paginationArrow":"arrow","layout":{"type":"flex","justifyContent":"center"}} -->
                    <!-- wp:query-pagination-previous /-->

                    <!-- wp:query-pagination-numbers /-->

                    <!-- wp:query-pagination-next /-->
                    <!-- /wp:query-pagination -->
                </div>
                <!-- /wp:query -->
                </div>
                <!-- /wp:group -->
            ';
            $page = array(
                'post_title' => 'Blog',
                'post_content' => '',
                'post_status' => 'publish',
                'post_type' => 'page',
                'post_content' => wp_slash($content)
            );
            $page_id = wp_insert_post($page);
            $created_pages['query'] = $page_id;
        }

        if (
            (in_array('contact', $onboard_options['selected_pages']) && !array_key_exists('contact', $created_pages)) 
            || 
            (array_key_exists('contact', $created_pages) && !get_permalink($created_pages['contact']))
            ) {
            $content = '
            <!-- wp:greenshift-blocks/row {"id":"gsbp-22d4f36","align":"full","rowLayout":"2","displayStyles":false,"spacing":{"margin":{"values":{"bottom":["50px"]},"locked":false},"padding":{"values":{},"locked":false}},"isVariation":""} -->
                <div class="wp-block-greenshift-blocks-row alignfull gspb_row gspb_row-id-gsbp-22d4f36" id="gspb_row-id-gsbp-22d4f36"><div class="gspb_row__content"> <!-- wp:greenshift-blocks/row-column {"id":"gsbp-82b18e4","flexbox":{"type":"flexbox","flexDirection":["column"],"justifyContent":["space-between"]},"columnSize":"6"} -->
                <div class="wp-block-greenshift-blocks-row-column gspb_row__col--6 gspb_col-id-gsbp-82b18e4" id="gspb_col-id-gsbp-82b18e4"><!-- wp:greenshift-blocks/container {"id":"gsbp-d33c33a"} -->
                <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-d33c33a" id="gspb_container-id-gsbp-d33c33a"><!-- wp:greenshift-blocks/text {"id":"gsbp-ad9c1e1","textContent":"Connect with US","typography":{"textShadow":{},"transform":"uppercase","size":["15px"],"letter_spacing":["1px"]}} -->
                <div id="gspb_text-id-gsbp-ad9c1e1" class="gspb_text gspb_text-id-gsbp-ad9c1e1 ">Connect with US</div>
                <!-- /wp:greenshift-blocks/text -->

                <!-- wp:greenshift-blocks/heading {"id":"gsbp-3e6456a","headingContent":"Drop us a line","spacing":{"margin":{"values":{"top":["6px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["50px"]}} -->
                <h2 id="gspb_heading-id-gsbp-3e6456a" class="gspb_heading gspb_heading-id-gsbp-3e6456a ">Drop us a line</h2>
                <!-- /wp:greenshift-blocks/heading -->

                <!-- wp:social-links {"className":"is-style-default"} -->
                <ul class="wp-block-social-links is-style-default"><!-- wp:social-link {"url":"#h","service":"twitter"} /-->

                <!-- wp:social-link {"url":"","service":"facebook"} /-->

                <!-- wp:social-link {"url":"#","service":"tiktok"} /--></ul>
                <!-- /wp:social-links --></div>
                <!-- /wp:greenshift-blocks/container -->

                <!-- wp:greenshift-blocks/container {"id":"gsbp-5642542","flexbox":{"type":"grid","enable":false,"gridcolumns":[2,null,null,1],"columngap":[20],"rowgap":[20]},"displayStyles":false,"isVariation":"cssgrid"} -->
                <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-5642542" id="gspb_container-id-gsbp-5642542"><!-- wp:greenshift-blocks/container {"id":"gsbp-20eefef"} -->
                <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-20eefef" id="gspb_container-id-gsbp-20eefef"><!-- wp:greenshift-blocks/iconlist {"id":"gsbp-687f846","iconsList":[{"icon":{"icon":{"font":"rhicon rhi-envelope","svg":"","image":""},"fill":"","fillhover":"","iconSize":[null,null,null,null],"rotateY":false,"rotateX":false,"type":"font"},"content":"Write to us"}],"typography":{"textShadow":{},"customweight":"bold","size":["16px"]}} -->
                <div class="wp-block-greenshift-blocks-iconlist gspb_iconsList gspb_iconsList-id-gsbp-687f846" id="gspb_iconsList-id-gsbp-687f846"><div class="gspb_iconsList__item" data-id="0"><svg class="" style="display:inline-block;vertical-align:middle" width="18" height="18" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg"><path style="fill:#565D66" d="M928 128h-832c-53 0-96 43-96 96v576c0 53 43 96 96 96h832c53 0 96-43 96-96v-576c0-53-43-96-96-96zM96 192h832c17.6 0 32 14.4 32 32v82.8c-43.8 37-106.4 88-301.2 242.6-33.8 26.8-100.4 91.4-146.8 90.6-46.4 0.8-113.2-63.8-146.8-90.6-194.8-154.6-257.4-205.6-301.2-242.6v-82.8c0-17.6 14.4-32 32-32zM928 832h-832c-17.6 0-32-14.4-32-32v-410c45.6 37.4 117.6 95.2 261.4 209.4 41 32.8 113.4 105 186.6 104.6 72.8 0.6 144.6-71 186.6-104.6 143.8-114.2 215.8-172 261.4-209.4v410c0 17.6-14.4 32-32 32z"></path></svg><span class="gspb_iconsList__item__text">Write to us</span></div></div>
                <!-- /wp:greenshift-blocks/iconlist -->

                <!-- wp:greenshift-blocks/text {"id":"gsbp-7f9bafd","textContent":"greenshiftpost@supervendor\u003cbr\u003e\u003ca href=\u0022#\u0022\u003eContact form\u003c/a\u003e","spacing":{"margin":{"values":{"top":["5px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"color":"","colorHover":"","size":["16px"],"line_height":["24px"]},"csstransform":{"opacity":"0.7"}} -->
                <div id="gspb_text-id-gsbp-7f9bafd" class="gspb_text gspb_text-id-gsbp-7f9bafd ">greenshiftpost@supervendor<br><a href="#">Contact form</a></div>
                <!-- /wp:greenshift-blocks/text --></div>
                <!-- /wp:greenshift-blocks/container -->

                <!-- wp:greenshift-blocks/container {"id":"gsbp-ad64ceb"} -->
                <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-ad64ceb" id="gspb_container-id-gsbp-ad64ceb"><!-- wp:greenshift-blocks/iconlist {"id":"gsbp-6dec2c3","iconsList":[{"icon":{"icon":{"font":"rhicon rhi-history","svg":"","image":""},"fill":"","fillhover":"","iconSize":[null,null,null,null],"rotateY":false,"rotateX":false,"type":"font"},"content":"Time of Work"}],"typography":{"textShadow":{},"customweight":"bold","size":["16px"]}} -->
                <div class="wp-block-greenshift-blocks-iconlist gspb_iconsList gspb_iconsList-id-gsbp-6dec2c3" id="gspb_iconsList-id-gsbp-6dec2c3"><div class="gspb_iconsList__item" data-id="0"><svg class="" style="display:inline-block;vertical-align:middle" width="18" height="18" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg"><path style="fill:#565D66" d="M874.038 149.962c-96.704-96.704-225.278-149.962-362.038-149.962-158.432 0-305.912 72.984-402.094 194.938v-66.938c0-14.138-11.462-25.6-25.6-25.6s-25.6 11.462-25.6 25.6v152.154c0 11.71 7.946 21.928 19.296 24.811 4.941 1.256 9.979 0.979 14.555-0.581v0.003l146.096-49.754c13.384-4.558 20.538-19.102 15.979-32.486s-19.099-20.539-32.486-15.979l-76.304 25.987c86.443-113.066 221.208-180.955 366.158-180.955 254.086 0 460.8 206.714 460.8 460.8s-206.714 460.8-460.8 460.8c-169.778 0-325.323-92.936-405.938-242.541-6.706-12.446-22.235-17.099-34.68-10.392s-17.099 22.234-10.394 34.68c89.56 166.205 262.378 269.453 451.011 269.453 136.76 0 265.334-53.258 362.038-149.962s149.962-225.278 149.962-362.038c0-136.76-53.258-265.334-149.962-362.038z"></path><path style="fill:#565D66" d="M512 537.6c-4.277 0-8.558-1.069-12.432-3.222l-230.4-128c-12.36-6.866-16.813-22.451-9.946-34.81s22.451-16.813 34.81-9.946l217.080 120.6 268.744-171.021c11.925-7.59 27.75-4.078 35.342 7.854 7.59 11.928 4.074 27.75-7.854 35.341l-281.6 179.2c-4.182 2.662-8.962 4.003-13.744 4.003z"></path></svg><span class="gspb_iconsList__item__text">Time of Work</span></div></div>
                <!-- /wp:greenshift-blocks/iconlist -->

                <!-- wp:greenshift-blocks/text {"id":"gsbp-6e7963d","textContent":"Monday - Saturday\u003cbr\u003e10.00 - 19.00","spacing":{"margin":{"values":{"top":["5px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"color":"","colorHover":"","size":["16px"],"line_height":["24px"]},"csstransform":{"opacity":"0.7"}} -->
                <div id="gspb_text-id-gsbp-6e7963d" class="gspb_text gspb_text-id-gsbp-6e7963d ">Monday - Saturday<br>10.00 - 19.00</div>
                <!-- /wp:greenshift-blocks/text --></div>
                <!-- /wp:greenshift-blocks/container --></div>
                <!-- /wp:greenshift-blocks/container --></div>
                <!-- /wp:greenshift-blocks/row-column -->

                <!-- wp:greenshift-blocks/row-column {"id":"gsbp-415c055","columnSize":"6"} -->
                <div class="wp-block-greenshift-blocks-row-column gspb_row__col--6 gspb_col-id-gsbp-415c055" id="gspb_col-id-gsbp-415c055"><!-- wp:greenshift-blocks/container {"id":"gsbp-d02c591","background":{},"overlay":{}} -->
                <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-d02c591" id="gspb_container-id-gsbp-d02c591"><!-- wp:greenshift-blocks/map {"id":"gsbp-38d18fb","spacing":{"margin":{"values":{},"locked":false},"padding":{"values":{},"locked":false},"overflow":["hidden"]},"border":{"borderRadius":{"values":{"topLeft":["12px"],"topRight":["12px"],"bottomRight":["12px"],"bottomLeft":["12px"]},"locked":true},"style":{},"size":{},"color":{},"styleHover":{},"sizeHover":{},"colorHover":{},"custom":{},"customEnabled":{}},"background":{"saturate":0,"brightness":0.9,"contrast":1.6},"zoomlevel":15} /-->

                <!-- wp:greenshift-blocks/container {"id":"gsbp-b46f632","background":{"color":"#ffffff"},"border":{"borderRadius":{"values":{"topLeft":["8px"],"topRight":["8px"],"bottomRight":["8px"],"bottomLeft":["8px"]},"locked":true},"style":{},"size":{},"color":{},"styleHover":{},"sizeHover":{},"colorHover":{},"custom":{},"customEnabled":{}},"spacing":{"margin":{"values":{},"locked":false},"padding":{"values":{"top":["15px"],"right":["15px"],"bottom":["15px"],"left":["15px"]},"locked":true}},"shadow":{"hoffset":0,"voffset":15,"blur":25,"spread":0,"color":"rgba(0, 0, 0, 0.1)","position":"","preset":"1"},"position":{"positionType":["absolute","","",""],"positions":{"values":{"bottom":["15px"],"left":["15px"],"right":["15px"]}}}} -->
                <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-b46f632" id="gspb_container-id-gsbp-b46f632"><!-- wp:greenshift-blocks/text {"id":"gsbp-120b423","textContent":"Visit us","typography":{"textShadow":{},"size":["15px"],"customweight":"bold"}} -->
                <div id="gspb_text-id-gsbp-120b423" class="gspb_text gspb_text-id-gsbp-120b423 ">Visit us</div>
                <!-- /wp:greenshift-blocks/text -->

                <!-- wp:greenshift-blocks/text {"id":"gsbp-83a61d8","textContent":"London, Avenue 23, 999","typography":{"textShadow":{},"size":["16px"]}} -->
                <div id="gspb_text-id-gsbp-83a61d8" class="gspb_text gspb_text-id-gsbp-83a61d8 ">London, Avenue 23, 999</div>
                <!-- /wp:greenshift-blocks/text --></div>
                <!-- /wp:greenshift-blocks/container --></div>
                <!-- /wp:greenshift-blocks/container --></div>
                <!-- /wp:greenshift-blocks/row-column --> </div></div>
                <!-- /wp:greenshift-blocks/row -->
            ';
            $page = array(
                'post_title' => 'Contact',
                'post_content' => '',
                'post_status' => 'publish',
                'post_type' => 'page',
                'post_content' => wp_slash($content)
            );
            $page_id = wp_insert_post($page);
            $css = '
            .gspb_text-id-gsbp-ad9c1e1{text-transform:uppercase;font-size:15px;letter-spacing:1px}#gspb_heading-id-gsbp-3e6456a{font-size:50px;margin-top:6px}#gspb_iconsList-id-gsbp-687f846.gspb_iconsList .gspb_iconsList__item__text{margin-left:15px}#gspb_iconsList-id-gsbp-687f846.gspb_iconsList .gspb_iconsList__item{display:flex;flex-direction:row;align-items:center;position:relative;font-size:16px;font-weight:700!important}#gspb_iconsList-id-gsbp-687f846.gspb_iconsList .gspb_iconsList__item svg path,#gspb_iconsList-id-gsbp-6dec2c3.gspb_iconsList .gspb_iconsList__item svg path{fill:#2184f9!important}#gspb_iconsList-id-gsbp-687f846.gspb_iconsList [data-id="0"] svg,#gspb_iconsList-id-gsbp-6dec2c3.gspb_iconsList [data-id="0"] svg,body #gspb_iconsList-id-gsbp-687f846.gspb_iconsList .gspb_iconsList__item img,body #gspb_iconsList-id-gsbp-687f846.gspb_iconsList .gspb_iconsList__item svg,body #gspb_iconsList-id-gsbp-6dec2c3.gspb_iconsList .gspb_iconsList__item img,body #gspb_iconsList-id-gsbp-6dec2c3.gspb_iconsList .gspb_iconsList__item svg{margin:0!important}#gspb_iconsList-id-gsbp-6dec2c3.gspb_iconsList .gspb_iconsList__item__text{margin-left:15px}#gspb_iconsList-id-gsbp-6dec2c3.gspb_iconsList .gspb_iconsList__item{display:flex;flex-direction:row;align-items:center;position:relative;font-size:16px;font-weight:700!important}.gspb_text-id-gsbp-6e7963d,.gspb_text-id-gsbp-7f9bafd{font-size:16px;line-height:24px;margin-top:5px!important;opacity:.7}.gspb_text-id-gsbp-120b423{font-size:15px;font-weight:700!important}.gspb_text-id-gsbp-83a61d8{font-size:16px}#gspb_row-id-gsbp-22d4f36{justify-content:space-between;margin-top:0;display:flex;flex-wrap:wrap;margin-bottom:50px}#gspb_row-id-gsbp-22d4f36>.gspb_row__content{display:flex;justify-content:space-between;margin:0 auto;width:100%;flex-wrap:wrap}.gspb_row{position:relative}div[id^=gspb_col-id]{padding:15px min(3vw,20px);box-sizing:border-box;position:relative}body.gspb-bodyfront #gspb_row-id-gsbp-22d4f36>.gspb_row__content{max-width:var(--wp--style--global--wide-size, 1200px)}#gspb_col-id-gsbp-82b18e4.gspb_row__col--6{width:50%}@media (max-width:575.98px){#gspb_col-id-gsbp-82b18e4.gspb_row__col--6{width:100%}}body #gspb_col-id-gsbp-82b18e4.gspb_row__col--6{display:flex;flex-direction:column;justify-content:space-between}.gspb_container-id-gsbp-d33c33a{flex-direction:column;box-sizing:border-box}#gspb_container-id-gsbp-20eefef.gspb_container>p:last-of-type,#gspb_container-id-gsbp-5642542.gspb_container>p:last-of-type,#gspb_container-id-gsbp-ad64ceb.gspb_container>p:last-of-type,#gspb_container-id-gsbp-b46f632.gspb_container>p:last-of-type,#gspb_container-id-gsbp-d02c591.gspb_container>p:last-of-type,#gspb_container-id-gsbp-d33c33a.gspb_container>p:last-of-type{margin-bottom:0}#gspb_container-id-gsbp-5642542.gspb_container{display:grid;grid-template-columns:repeat(2,minmax(0,1fr));row-gap:20px;column-gap:20px}@media (max-width:575.98px){#gspb_container-id-gsbp-5642542.gspb_container{grid-template-columns:repeat(1,minmax(0,1fr))}}#gspb_col-id-gsbp-415c055.gspb_row__col--6{width:50%}@media (max-width:575.98px){#gspb_col-id-gsbp-415c055.gspb_row__col--6{width:100%}}.gspb_container-id-gsbp-20eefef,.gspb_container-id-gsbp-5642542,.gspb_container-id-gsbp-ad64ceb,.gspb_container-id-gsbp-b46f632,.gspb_container-id-gsbp-d02c591{flex-direction:column;box-sizing:border-box}.gspb_container{position:relative}body.gspb-bodyfront #gspb_container-id-gsbp-b46f632.gspb_container{position:absolute;right:15px;bottom:15px;left:15px}#gspb_container-id-gsbp-b46f632.gspb_container{box-shadow:0 15px 25px 0 rgba(0,0,0,.1);padding:15px;background-color:#fff}#gspb_container-id-gsbp-b46f632.gspb_container,#gspb_container-id-gsbp-b46f632.gspb_container>.gspb_backgroundOverlay{border-top-left-radius:8px;border-top-right-radius:8px;border-bottom-right-radius:8px;border-bottom-left-radius:8px}.gspb_id-gsbp-b68a7b5{display:flex;overflow:hidden;border-top-left-radius:12px;border-top-right-radius:12px;border-bottom-right-radius:12px;border-bottom-left-radius:12px;filter:brightness(.9) contrast(1.6) saturate(0)}.gspb_id-gsbp-b68a7b5 .gspb_map-wrapper{width:100%;height:400px;isolation:isolate}
            ';
            update_post_meta($page_id, '_gspb_post_css', $css);
            $created_pages['contact'] = $page_id;
        }

        if (
            (in_array('price', $onboard_options['selected_pages']) && !array_key_exists('price', $created_pages)) 
            || 
            (array_key_exists('price', $created_pages) && !get_permalink($created_pages['price']))
            ) {
            $content = '<!-- wp:pattern {"slug":"greenshift/general-pricing-light"} /-->';
            $page = array(
                'post_title' => 'Prices',
                'post_content' => '',
                'post_status' => 'publish',
                'post_type' => 'page',
                'post_content' => wp_slash($content)
            );
            $page_id = wp_insert_post($page);
            update_post_meta( $page_id, '_wp_page_template', 'no-title' );
            $created_pages['price'] = $page_id;
        }
        if (
            (in_array('comparison', $onboard_options['selected_pages']) && !array_key_exists('comparison', $created_pages)) 
            || 
            (array_key_exists('comparison', $created_pages) && !get_permalink($created_pages['comparison']))
            ) {
            $content = '<!-- wp:greenshift-blocks/product-comparison {"id":"gsbp-ac23bb4","align":"wide","type":"table","loading":false} -->
            <span class="compareicon"><svg class="" style="display:inline-block;vertical-align:middle" width="16" height="16" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg"><path style="fill:#565D66" d="M200.832 883.499l652.501-652.501v110.336c0 23.552 19.115 42.667 42.667 42.667s42.667-19.115 42.667-42.667v-213.333c0-5.803-1.152-11.307-3.243-16.341s-5.163-9.728-9.216-13.781c-0.043-0.043-0.043-0.043-0.085-0.085-3.925-3.925-8.619-7.083-13.781-9.216-5.035-2.091-10.539-3.243-16.341-3.243h-213.333c-23.552 0-42.667 19.115-42.667 42.667s19.115 42.667 42.667 42.667h110.336l-652.501 652.501c-16.683 16.683-16.683 43.691 0 60.331s43.691 16.683 60.331 0zM609.835 670.165l183.168 183.168h-110.336c-23.552 0-42.667 19.115-42.667 42.667s19.115 42.667 42.667 42.667h213.333c5.547 0 11.136-1.067 16.341-3.243s9.899-5.333 13.824-9.259c4.096-4.096 7.168-8.789 9.259-13.824s3.243-10.539 3.243-16.341v-213.333c0-23.552-19.115-42.667-42.667-42.667s-42.667 19.115-42.667 42.667v110.336l-183.168-183.168c-16.683-16.683-43.691-16.683-60.331 0s-16.683 43.691 0 60.331zM140.501 200.832l213.333 213.333c16.683 16.683 43.691 16.683 60.331 0s16.683-43.691 0-60.331l-213.333-213.333c-16.683-16.683-43.691-16.683-60.331 0s-16.683 43.691 0 60.331z"></path></svg></span>
            <!-- /wp:greenshift-blocks/product-comparison -->';
            $page = array(
                'post_title' => 'Product Comparison',
                'post_content' => '',
                'post_status' => 'publish',
                'post_type' => 'page',
                'post_content' => wp_slash($content)
            );
            $page_id = wp_insert_post($page);
            $created_pages['comparison'] = $page_id;
        }

        if (
            (in_array('wishlist', $onboard_options['selected_pages']) && !array_key_exists('wishlist', $created_pages)) 
            || 
            (array_key_exists('wishlist', $created_pages) && !get_permalink($created_pages['wishlist']))
            ) {
            $content = '<!-- wp:greenshift-blocks/wishlist {"id":"gsbp-96968dc","type":"list"} /-->';
            $page = array(
                'post_title' => 'Wishlist',
                'post_content' => '',
                'post_status' => 'publish',
                'post_type' => 'page',
                'post_content' => wp_slash($content)
            );
            $page_id = wp_insert_post($page);
            $created_pages['wishlist'] = $page_id;
        }

        if (
            (in_array('team', $onboard_options['selected_pages']) && !array_key_exists('team', $created_pages)) 
            || 
            (array_key_exists('team', $created_pages) && !get_permalink($created_pages['team']))
            ) {
                $content = '
                <!-- wp:group {"style":{"spacing":{"blockGap":"var:preset|spacing|20","padding":{"top":"0","bottom":"0"},"margin":{"top":"var:preset|spacing|80","bottom":"var:preset|spacing|80"}}},"layout":{"type":"flex","orientation":"vertical","justifyContent":"center"}} -->
                <div class="wp-block-group" style="margin-top:var(--wp--preset--spacing--80);margin-bottom:var(--wp--preset--spacing--80);padding-top:0;padding-bottom:0"><!-- wp:group {"align":"full","style":{"color":{"background":"rgba(255,255,255,1)"},"border":{"radius":"999px","width":"1px"},"spacing":{"blockGap":"8px","padding":{"top":"4px","right":"12px","bottom":"4px","left":"12px"}}},"borderColor":"lightborder","className":"","layout":{"type":"flex","flexWrap":"nowrap"}} -->
                <div class="wp-block-group alignfull has-border-color has-lightborder-border-color has-background" style="border-width:1px;border-radius:999px;background-color:rgba(255,255,255,1);padding-top:4px;padding-right:12px;padding-bottom:4px;padding-left:12px"><!-- wp:paragraph {"align":"left","className":"text-nowrap is-style-default","fontSize":"xsmall"} -->
                <p class="has-text-align-left text-nowrap is-style-default has-xsmall-font-size">Our Team</p>
                <!-- /wp:paragraph --></div>
                <!-- /wp:group -->

                <!-- wp:paragraph {"align":"center","style":{"typography":{"fontStyle":"normal","fontWeight":"600","lineHeight":"1.2"}},"fontSize":"max-gigantic"} -->
                <p class="has-text-align-center has-max-gigantic-font-size" style="font-style:normal;font-weight:600;line-height:1.2">Meet Our team who will<br><mark style="background-color:rgba(0, 0, 0, 0)" class="has-inline-color has-primary-color">help you on any day</mark></p>
                <!-- /wp:paragraph --></div>
                <!-- /wp:group -->
                
                <!-- wp:greenshift-blocks/row {"id":"gsbp-4ce0597","align":"full","rowLayout":"2","brp_rowLayout":["30",null,null],"displayStyles":false,"isVariation":""} -->
                    <div class="wp-block-greenshift-blocks-row alignfull gspb_row gspb_row-id-gsbp-4ce0597" id="gspb_row-id-gsbp-4ce0597"><div class="gspb_row__content"> <!-- wp:greenshift-blocks/row-column {"id":"gsbp-cb3a697","enableExtendedWidth":false,"width":[null,null],"widthUnit":["%","%"],"flexbox":{"type":"flexbox","flexDirection":["row",null,null,"column"],"justifyContent":["flex-start"],"columngap":["35px"],"rowgap":["35px"]},"columnSize":"6","brp_columnSize":["12",null,null]} -->
                    <div class="wp-block-greenshift-blocks-row-column gspb_row__col--6 gspb_row__col--md-12 gspb_col-id-gsbp-cb3a697" id="gspb_col-id-gsbp-cb3a697"><!-- wp:greenshift-blocks/container {"id":"gspb-KI1OjqFVjWgNJS6RULrn5","blockWidth":{"customWidth":{"value":["192px"]},"customHeight":{"value":[]},"widthType":"custom","maxWidth":["192px"],"minWidth":["192px"]}} -->
                    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gspb-KI1OjqFVjWgNJS6RULrn5" id="gspb_container-id-gspb-KI1OjqFVjWgNJS6RULrn5"><!-- wp:greenshift-blocks/image {"id":"gspb-h9DdabHPAAWcPri8BJFjv","width":["custom",null,null,null],"customWidth":[192,null,null,null],"csstransform":{"rotateZHover":["-3"],"time":0.5,"scaleHover":["1.05"]},"mediaurl":"https://placehold.co/192x357/png"} -->
                    <div class="wp-block-greenshift-blocks-image gspb_image gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv" id="gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv"><img src="https://placehold.co/192x357/png" data-src="" loading="lazy" width="192" height=""/></div>
                    <!-- /wp:greenshift-blocks/image --></div>
                    <!-- /wp:greenshift-blocks/container -->

                    <!-- wp:greenshift-blocks/container {"id":"gsbp-df42409"} -->
                    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-df42409" id="gspb_container-id-gsbp-df42409"><!-- wp:greenshift-blocks/heading {"id":"gspb-O5sepOaMyQ8i90RO1XuR5","headingContent":"John Doe","spacing":{"margin":{"values":{"top":["0px"],"right":["0px"],"bottom":["0px"],"left":["0px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"customweight":"custom","customweightnumber":600,"size":["36px"],"line_height":["40px"]},"blockWidth":{"customWidth":{"value":[]},"customHeight":{"value":[]},"widthType":"custom"}} -->
                    <h2 id="gspb_heading-id-gspb-O5sepOaMyQ8i90RO1XuR5" class="gspb_heading gspb_heading-id-gspb-O5sepOaMyQ8i90RO1XuR5 ">John Doe</h2>
                    <!-- /wp:greenshift-blocks/heading -->

                    <!-- wp:greenshift-blocks/text {"id":"gspb-TyimYNK8RusogN70wad5z","textContent":"Co-Founder, CEO","spacing":{"margin":{"values":{"top":["12px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["12px"],"transform":"uppercase","customweight":"normal"}} -->
                    <div id="gspb_text-id-gspb-TyimYNK8RusogN70wad5z" class="gspb_text gspb_text-id-gspb-TyimYNK8RusogN70wad5z ">Co-Founder, CEO</div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/text {"id":"gsbp-643ac9c","textContent":"Velit dolore esse Lorem officia. Irure id veniam nulla consectetur minim mollit do aliqua. Minim enim labore est nostrud minim. ","spacing":{"margin":{"values":{"top":["30px"],"bottom":["0px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["17px"],"line_height":["24px"],"customweight":"normal"},"csstransform":{"opacity":"0.7"}} -->
                    <div id="gspb_text-id-gsbp-643ac9c" class="gspb_text gspb_text-id-gsbp-643ac9c ">Velit dolore esse Lorem officia. Irure id veniam nulla consectetur minim mollit do aliqua. Minim enim labore est nostrud minim. </div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/text {"id":"gsbp-e8da50d","textContent":"Elit eu enim irure Lorem anim in sint pariatur ullamco ut excepteur fugiat. ","spacing":{"margin":{"values":{"top":["30px"],"bottom":["0px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["17px"],"line_height":["24px"],"customweight":"normal"},"csstransform":{"opacity":"0.7"}} -->
                    <div id="gspb_text-id-gsbp-e8da50d" class="gspb_text gspb_text-id-gsbp-e8da50d ">Elit eu enim irure Lorem anim in sint pariatur ullamco ut excepteur fugiat. </div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/container {"id":"gspb-zsGuZzpspCiWcGVY8P-QF","flexbox":{"type":"flexbox","flexDirection":["row"],"columngap":[4],"rowgap":[4],"alignItems":["flex-start"],"justifyContent":["flex-start"]},"spacing":{"margin":{"values":{"top":["40px"]},"locked":false},"padding":{"values":{},"locked":false}},"blockWidth":{"customWidth":{"value":[]},"customHeight":{"value":[]},"widthType":"","heightType":"custom"}} -->
                    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gspb-zsGuZzpspCiWcGVY8P-QF" id="gspb_container-id-gspb-zsGuZzpspCiWcGVY8P-QF"><!-- wp:greenshift-blocks/text {"id":"gspb-hWgNkX87-LI3s14M_fq2K","textContent":"\u003ca href=\u0022#\u0022\u003eFollow on Twitter\u003c/a\u003e","spacing":{"margin":{"values":{"top":["0px"],"right":["0px"],"bottom":["0px"],"left":["0px"]},"locked":true},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["14px"],"line_height":["20px"],"colorlinks":"var(\u002d\u002dgs-colorone, #2184f9)"},"blockWidth":{"customWidth":{"value":[]},"customHeight":{"value":[]},"widthType":"custom"}} -->
                    <div id="gspb_text-id-gspb-hWgNkX87-LI3s14M_fq2K" class="gspb_text gspb_text-id-gspb-hWgNkX87-LI3s14M_fq2K "><a href="#">Follow on Twitter</a></div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/svgshape {"id":"gspb-GWTFHitWLg1xGRfPKlh4E","spacing":{"margin":{"values":{"top":["0px"],"right":["0px"],"bottom":["0px"],"left":["0px"]},"locked":true},"padding":{"values":{},"locked":false}},"spacingshape":{"margin":{"values":{"right":["0px"],"left":["0px"],"top":["0px"],"bottom":["0px"]},"unit":["px","px","px","px"],"locked":true},"padding":{"values":{},"unit":["px","px","px","px"],"locked":false}},"customshapeOn":true,"customshape":"\u003csvg width=\u002220\u0022 height=\u002221\u0022 viewBox=\u00220 0 20 21\u0022 fill=\u0022none\u0022 xmlns=\u0022http://www.w3.org/2000/svg\u0022\u003e\n\u003cpath d=\u0022M5.83301 14.2603L14.1663 5.927\u0022 stroke=\u0022#2563EB\u0022 stroke-width=\u00222.5\u0022 stroke-linecap=\u0022round\u0022 stroke-linejoin=\u0022round\u0022/\u003e\n\u003cpath d=\u0022M5.83301 5.927H14.1663V14.2603\u0022 stroke=\u0022#2563EB\u0022 stroke-width=\u00222.5\u0022 stroke-linecap=\u0022round\u0022 stroke-linejoin=\u0022round\u0022/\u003e\n\u003c/svg\u003e\n","customshapeStroke":"var(\u002d\u002dgs-colorone, #2184f9)","width":[20],"height":[20,null,null,null],"widthUnit":["px","vw","vw","vw"]} -->
                    <div class="wp-block-greenshift-blocks-svgshape gspb_svgBox gspb_svgBox-id-gspb-GWTFHitWLg1xGRfPKlh4E" id="gspb_svgBox-id-gspb-GWTFHitWLg1xGRfPKlh4E"><svg width="20" style="width:5rem;height:5rem;margin:10px" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M5.83301 14.2603L14.1663 5.927" stroke="#2563EB" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5.83301 5.927H14.1663V14.2603" stroke="#2563EB" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"></path></svg></div>
                    <!-- /wp:greenshift-blocks/svgshape --></div>
                    <!-- /wp:greenshift-blocks/container --></div>
                    <!-- /wp:greenshift-blocks/container --></div>
                    <!-- /wp:greenshift-blocks/row-column -->

                    <!-- wp:greenshift-blocks/row-column {"id":"gsbp-e7d0c79","enableExtendedWidth":false,"width":[null,null],"widthUnit":["%","%"],"flexbox":{"type":"flexbox","flexDirection":["row",null,null,"column"],"justifyContent":["flex-start"],"columngap":["35px"],"rowgap":["35px"]},"columnSize":"6","brp_columnSize":["12",null,null]} -->
                    <div class="wp-block-greenshift-blocks-row-column gspb_row__col--6 gspb_row__col--md-12 gspb_col-id-gsbp-e7d0c79" id="gspb_col-id-gsbp-e7d0c79"><!-- wp:greenshift-blocks/container {"id":"gsbp-ef0c169","blockWidth":{"customWidth":{"value":["192px"]},"customHeight":{"value":[]},"widthType":"custom","maxWidth":["192px"],"minWidth":["192px"]}} -->
                    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-ef0c169" id="gspb_container-id-gsbp-ef0c169"><!-- wp:greenshift-blocks/image {"id":"gsbp-4bac980","width":["custom",null,null,null],"customWidth":[192,null,null,null],"csstransform":{"rotateZHover":["-3"],"time":0.5,"scaleHover":["1.05"]},"mediaurl":"https://placehold.co/192x357/png"} -->
                    <div class="wp-block-greenshift-blocks-image gspb_image gspb_image-id-gsbp-4bac980" id="gspb_image-id-gsbp-4bac980"><img src="https://placehold.co/192x357/png" data-src="" loading="lazy" width="192" height=""/></div>
                    <!-- /wp:greenshift-blocks/image --></div>
                    <!-- /wp:greenshift-blocks/container -->

                    <!-- wp:greenshift-blocks/container {"id":"gsbp-690b7c1"} -->
                    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-690b7c1" id="gspb_container-id-gsbp-690b7c1"><!-- wp:greenshift-blocks/heading {"id":"gsbp-948dbee","headingContent":"Joahna Doe","spacing":{"margin":{"values":{"top":["0px"],"right":["0px"],"bottom":["0px"],"left":["0px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"customweight":"custom","customweightnumber":600,"size":["36px"],"line_height":["40px"]},"blockWidth":{"customWidth":{"value":[]},"customHeight":{"value":[]},"widthType":"custom"}} -->
                    <h2 id="gspb_heading-id-gsbp-948dbee" class="gspb_heading gspb_heading-id-gsbp-948dbee ">Joahna Doe</h2>
                    <!-- /wp:greenshift-blocks/heading -->

                    <!-- wp:greenshift-blocks/text {"id":"gsbp-e7475f8","textContent":"Co-Founder, CEO","spacing":{"margin":{"values":{"top":["12px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["12px"],"transform":"uppercase","customweight":"normal"}} -->
                    <div id="gspb_text-id-gsbp-e7475f8" class="gspb_text gspb_text-id-gsbp-e7475f8 ">Co-Founder, CEO</div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/text {"id":"gsbp-3ee93bc","textContent":"Velit dolore esse Lorem officia. Irure id veniam nulla consectetur minim mollit do aliqua. Minim enim labore est nostrud minim. ","spacing":{"margin":{"values":{"top":["30px"],"bottom":["0px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["17px"],"line_height":["24px"],"customweight":"normal"},"csstransform":{"opacity":"0.7"}} -->
                    <div id="gspb_text-id-gsbp-3ee93bc" class="gspb_text gspb_text-id-gsbp-3ee93bc ">Velit dolore esse Lorem officia. Irure id veniam nulla consectetur minim mollit do aliqua. Minim enim labore est nostrud minim. </div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/text {"id":"gsbp-d339858","textContent":"Elit eu enim irure Lorem anim in sint pariatur ullamco ut excepteur fugiat. ","spacing":{"margin":{"values":{"top":["30px"],"bottom":["0px"]},"locked":false},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["17px"],"line_height":["24px"],"customweight":"normal"},"csstransform":{"opacity":"0.7"}} -->
                    <div id="gspb_text-id-gsbp-d339858" class="gspb_text gspb_text-id-gsbp-d339858 ">Elit eu enim irure Lorem anim in sint pariatur ullamco ut excepteur fugiat. </div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/container {"id":"gsbp-d127645","flexbox":{"type":"flexbox","flexDirection":["row"],"columngap":[4],"rowgap":[4],"alignItems":["flex-start"],"justifyContent":["flex-start"]},"spacing":{"margin":{"values":{"top":["40px"]},"locked":false},"padding":{"values":{},"locked":false}},"blockWidth":{"customWidth":{"value":[]},"customHeight":{"value":[]},"widthType":"","heightType":"custom"}} -->
                    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-d127645" id="gspb_container-id-gsbp-d127645"><!-- wp:greenshift-blocks/text {"id":"gsbp-5f6be32","textContent":"\u003ca href=\u0022#\u0022\u003eFollow on Twitter\u003c/a\u003e","spacing":{"margin":{"values":{"top":["0px"],"right":["0px"],"bottom":["0px"],"left":["0px"]},"locked":true},"padding":{"values":{},"locked":false}},"typography":{"textShadow":{},"size":["14px"],"line_height":["20px"],"colorlinks":"var(\u002d\u002dgs-colorone, #2184f9)"},"blockWidth":{"customWidth":{"value":[]},"customHeight":{"value":[]},"widthType":"custom"}} -->
                    <div id="gspb_text-id-gsbp-5f6be32" class="gspb_text gspb_text-id-gsbp-5f6be32 "><a href="#">Follow on Twitter</a></div>
                    <!-- /wp:greenshift-blocks/text -->

                    <!-- wp:greenshift-blocks/svgshape {"id":"gsbp-9a43655","spacing":{"margin":{"values":{"top":["0px"],"right":["0px"],"bottom":["0px"],"left":["0px"]},"locked":true},"padding":{"values":{},"locked":false}},"spacingshape":{"margin":{"values":{"right":["0px"],"left":["0px"],"top":["0px"],"bottom":["0px"]},"unit":["px","px","px","px"],"locked":true},"padding":{"values":{},"unit":["px","px","px","px"],"locked":false}},"customshapeOn":true,"customshape":"\u003csvg width=\u002220\u0022 height=\u002221\u0022 viewBox=\u00220 0 20 21\u0022 fill=\u0022none\u0022 xmlns=\u0022http://www.w3.org/2000/svg\u0022\u003e\n\u003cpath d=\u0022M5.83301 14.2603L14.1663 5.927\u0022 stroke=\u0022#2563EB\u0022 stroke-width=\u00222.5\u0022 stroke-linecap=\u0022round\u0022 stroke-linejoin=\u0022round\u0022/\u003e\n\u003cpath d=\u0022M5.83301 5.927H14.1663V14.2603\u0022 stroke=\u0022#2563EB\u0022 stroke-width=\u00222.5\u0022 stroke-linecap=\u0022round\u0022 stroke-linejoin=\u0022round\u0022/\u003e\n\u003c/svg\u003e\n","customshapeStroke":"var(\u002d\u002dgs-colorone, #2184f9)","width":[20],"height":[20,null,null,null],"widthUnit":["px","vw","vw","vw"]} -->
                    <div class="wp-block-greenshift-blocks-svgshape gspb_svgBox gspb_svgBox-id-gsbp-9a43655" id="gspb_svgBox-id-gsbp-9a43655"><svg width="20" style="width:5rem;height:5rem;margin:10px" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M5.83301 14.2603L14.1663 5.927" stroke="#2563EB" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5.83301 5.927H14.1663V14.2603" stroke="#2563EB" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"></path></svg></div>
                    <!-- /wp:greenshift-blocks/svgshape --></div>
                    <!-- /wp:greenshift-blocks/container --></div>
                    <!-- /wp:greenshift-blocks/container --></div>
                    <!-- /wp:greenshift-blocks/row-column --> </div></div>
                    <!-- /wp:greenshift-blocks/row -->
                
                    <!-- wp:group {"style":{"spacing":{"blockGap":"var:preset|spacing|30","margin":{"top":"var:preset|spacing|70","bottom":"var:preset|spacing|70"}}},"className":"","layout":{"type":"constrained"}} -->
                    <div class="wp-block-group" style="margin-top:var(--wp--preset--spacing--70);margin-bottom:var(--wp--preset--spacing--70)"><!-- wp:group {"align":"full","style":{"border":{"radius":"0px"},"spacing":{"blockGap":"var:preset|spacing|30"}},"className":"full-width","layout":{"type":"flex","orientation":"horizontal","justifyContent":"center","verticalAlignment":"center"}} -->
                    <div class="wp-block-group alignfull full-width" style="border-radius:0px"><!-- wp:image {"style":{"spacing":{"margin":{"top":"0px","right":"0px","bottom":"0px","left":"0px"}}}} -->
                    <figure class="wp-block-image" style="margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px"><img src="data:image/svg+xml,%3Csvg width=&quot;25&quot; height=&quot;24&quot; viewBox=&quot;0 0 25 24&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot;%3E%3Crect x=&quot;0.75&quot; y=&quot;0.25&quot; width=&quot;23.5&quot; height=&quot;23.5&quot; rx=&quot;11.75&quot; fill=&quot;%23FDF9EE&quot;/%3E%3Crect x=&quot;0.75&quot; y=&quot;0.25&quot; width=&quot;23.5&quot; height=&quot;23.5&quot; rx=&quot;11.75&quot; stroke=&quot;%23F8EDCD&quot; stroke-width=&quot;0.5&quot;/%3E%3Cpath d=&quot;M12.5005 15.3332L8.58197 17.7266L9.64737 13.2602L6.16016 10.2731L10.7372 9.90612L12.5005 5.6665L14.2639 9.90612L18.8409 10.2731L15.3537 13.2602L16.4191 17.7266L12.5005 15.3332Z&quot; fill=&quot;%23E4AA3B&quot;/%3E%3C/svg%3E%0A" alt=""/></figure>
                    <!-- /wp:image -->
                    
                    <!-- wp:paragraph {"align":"left","style":{"typography":{"fontWeight":"600","lineHeight":"1.8","fontStyle":"normal"}},"className":"text-nowrap","fontSize":"medium"} -->
                    <p class="has-text-align-left text-nowrap has-medium-font-size" style="font-style:normal;font-weight:600;line-height:1.8">4.9+</p>
                    <!-- /wp:paragraph -->
                    
                    <!-- wp:paragraph {"align":"center","className":"text-nowrap","fontSize":"small"} -->
                    <p class="has-text-align-center text-nowrap has-small-font-size">Based on customer reviews.</p>
                    <!-- /wp:paragraph --></div>
                    <!-- /wp:group --></div>
                    <!-- /wp:group -->

                    ';

            $page = array(
                'post_title' => 'Team',
                'post_content' => '',
                'post_status' => 'publish',
                'post_type' => 'page',
                'post_content' => wp_slash($content)
            );
            $css = '
            #gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv img{vertical-align:top;display:inline-block;box-sizing:border-box;max-width:100%;transition:all .5s cubic-bezier(.165,.84,.44,1);width:192px}#gspb_image-id-gsbp-4bac980 img:hover,#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv img:hover{transform:scale(1.05) rotateZ(-3deg)}#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv,#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv img{height:auto}@media (max-width:991.98px){#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv,#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv img{height:auto}}@media (max-width:767.98px){#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv,#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv img{height:auto}}@media (max-width:575.98px){#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv,#gspb_image-id-gspb-h9DdabHPAAWcPri8BJFjv img{height:auto}}#gspb_heading-id-gspb-O5sepOaMyQ8i90RO1XuR5{font-size:36px;line-height:40px;font-weight:600!important;margin:0}.gspb_text-id-gspb-TyimYNK8RusogN70wad5z{text-transform:uppercase;font-size:12px;font-weight:400!important;margin-top:12px!important}.gspb_text-id-gsbp-643ac9c,.gspb_text-id-gsbp-e8da50d{font-size:17px;line-height:24px;font-weight:400!important;margin-top:30px!important;margin-bottom:0!important;opacity:.7}.gspb_text-id-gspb-hWgNkX87-LI3s14M_fq2K{font-size:14px;line-height:20px;margin:0!important}.gspb_text-id-gsbp-5f6be32 .wp-block a,.gspb_text-id-gsbp-5f6be32 a,.gspb_text-id-gspb-hWgNkX87-LI3s14M_fq2K .wp-block a,.gspb_text-id-gspb-hWgNkX87-LI3s14M_fq2K a{color:var(--gs-colorone, #2184f9)}#gspb_svgBox-id-gspb-GWTFHitWLg1xGRfPKlh4E{display:flex;margin:0;width:20px!important;height:20px!important}#gspb_svgBox-id-gspb-GWTFHitWLg1xGRfPKlh4E svg{width:20px!important;height:20px!important;stroke:var(--gs-colorone, #2184f9)!important}#gspb_svgBox-id-gspb-GWTFHitWLg1xGRfPKlh4E svg path{stroke:var(--gs-colorone, #2184f9)!important}#gspb_image-id-gsbp-4bac980 img{vertical-align:top;display:inline-block;box-sizing:border-box;max-width:100%;transition:all .5s cubic-bezier(.165,.84,.44,1);width:192px;height:auto}#gspb_image-id-gsbp-4bac980{height:auto}@media (max-width:991.98px){#gspb_image-id-gsbp-4bac980,#gspb_image-id-gsbp-4bac980 img{height:auto}}@media (max-width:767.98px){#gspb_image-id-gsbp-4bac980,#gspb_image-id-gsbp-4bac980 img{height:auto}}@media (max-width:575.98px){#gspb_image-id-gsbp-4bac980,#gspb_image-id-gsbp-4bac980 img{height:auto}}#gspb_heading-id-gsbp-948dbee{font-size:36px;line-height:40px;font-weight:600!important;margin:0}.gspb_text-id-gsbp-e7475f8{text-transform:uppercase;font-size:12px;font-weight:400!important;margin-top:12px!important}.gspb_text-id-gsbp-3ee93bc,.gspb_text-id-gsbp-d339858{font-size:17px;line-height:24px;font-weight:400!important;margin-top:30px!important;margin-bottom:0!important;opacity:.7}.gspb_text-id-gsbp-5f6be32{font-size:14px;line-height:20px;margin:0!important}#gspb_svgBox-id-gsbp-9a43655{display:flex;margin:0}#gspb_svgBox-id-gsbp-9a43655 svg,#gspb_svgBox-id-gspb-GWTFHitWLg1xGRfPKlh4E svg{margin:0!important;overflow:visible;max-width:100%}#gspb_svgBox-id-gsbp-9a43655,#gspb_svgBox-id-gsbp-9a43655 svg{width:20px!important;height:20px!important}#gspb_svgBox-id-gsbp-9a43655 svg,#gspb_svgBox-id-gsbp-9a43655 svg path{stroke:var(--gs-colorone, #2184f9)!important}#gspb_row-id-gsbp-4ce0597{justify-content:space-between;margin-top:0;margin-bottom:0;display:flex;flex-wrap:wrap}#gspb_row-id-gsbp-4ce0597>.gspb_row__content{display:flex;justify-content:space-between;margin:0 auto;width:100%;flex-wrap:wrap}.gspb_row{position:relative}div[id^=gspb_col-id]{padding:15px min(3vw,20px);box-sizing:border-box;position:relative}body.gspb-bodyfront #gspb_row-id-gsbp-4ce0597>.gspb_row__content{max-width:var(--wp--style--global--wide-size, 1200px)}#gspb_col-id-gsbp-cb3a697.gspb_row__col--6{width:50%}@media (max-width:991.98px){#gspb_col-id-gsbp-cb3a697.gspb_row__col--6{width:100%}}@media (max-width:575.98px){#gspb_col-id-gsbp-cb3a697.gspb_row__col--6{width:100%}}body #gspb_col-id-gsbp-cb3a697.gspb_row__col--6{display:flex;flex-direction:row;justify-content:flex-start;row-gap:35px;column-gap:35px}@media (max-width:575.98px){body #gspb_col-id-gsbp-cb3a697.gspb_row__col--6{flex-direction:column}}.gspb_container-id-gspb-KI1OjqFVjWgNJS6RULrn5{flex-direction:column;box-sizing:border-box}#gspb_container-id-gsbp-690b7c1.gspb_container>p:last-of-type,#gspb_container-id-gsbp-d127645.gspb_container>p:last-of-type,#gspb_container-id-gsbp-df42409.gspb_container>p:last-of-type,#gspb_container-id-gsbp-ef0c169.gspb_container>p:last-of-type,#gspb_container-id-gspb-KI1OjqFVjWgNJS6RULrn5.gspb_container>p:last-of-type,#gspb_container-id-gspb-zsGuZzpspCiWcGVY8P-QF.gspb_container>p:last-of-type{margin-bottom:0}#gspb_container-id-gspb-KI1OjqFVjWgNJS6RULrn5.gspb_container{width:192px;min-width:192px;max-width:192px}#gspb_container-id-gspb-zsGuZzpspCiWcGVY8P-QF.gspb_container{display:flex;flex-direction:row;justify-content:flex-start;align-items:flex-start;row-gap:4px;column-gap:4px;margin-top:40px}#gspb_col-id-gsbp-e7d0c79.gspb_row__col--6{width:50%}@media (max-width:991.98px){#gspb_col-id-gsbp-e7d0c79.gspb_row__col--6{width:100%}}@media (max-width:575.98px){#gspb_col-id-gsbp-e7d0c79.gspb_row__col--6{width:100%}}body #gspb_col-id-gsbp-e7d0c79.gspb_row__col--6{display:flex;flex-direction:row;justify-content:flex-start;row-gap:35px;column-gap:35px}@media (max-width:575.98px){body #gspb_col-id-gsbp-e7d0c79.gspb_row__col--6{flex-direction:column}}.gspb_container-id-gsbp-690b7c1,.gspb_container-id-gsbp-d127645,.gspb_container-id-gsbp-df42409,.gspb_container-id-gsbp-ef0c169,.gspb_container-id-gspb-zsGuZzpspCiWcGVY8P-QF{flex-direction:column;box-sizing:border-box}#gspb_container-id-gsbp-ef0c169.gspb_container{width:192px;min-width:192px;max-width:192px}.gspb_container{position:relative}#gspb_container-id-gsbp-d127645.gspb_container{display:flex;flex-direction:row;justify-content:flex-start;align-items:flex-start;row-gap:4px;column-gap:4px;margin-top:40px}
            ';
            $page_id = wp_insert_post($page);
            update_post_meta($page_id, '_gspb_post_css', $css);
            $created_pages['team'] = $page_id;
        }

        $onboard_options['created_pages'] = $created_pages;
        update_option('greenshift_onboard_options', $onboard_options);

    }

    if (isset($_POST['gspb_save_settings_next'])) {
        wp_redirect(admin_url('admin.php?page=greenshift_theme_settings&tab=single'));
        exit;
    }
}

?>

<div class="greenshift_form wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-7b4f8e8f-1a69" id="gspb_container-id-gsbp-7b4f8e8f-1a69">
    <form method="POST">
        <div>
        <?php wp_nonce_field('gspb_settings_page_action', 'gspb_settings_field'); ?>
        <div class="settings-container">
            <div>
                <p>
                    <?php esc_html_e("Select if you want to create extra pages", "greenshift"); ?>
                </p>
            </div>
        </div>
        <div class="settings-container" style="border-color:transparent">
            <div class="createpages-container">
                <div class="page-element-outer-container">
                    <label>
                        <input type="checkbox" name="selected_pages[]" value="query" <?php echo in_array('query', $onboard_options['selected_pages']) ? 'checked' : '' ?>>
                        <?php esc_html_e("Blog Page", "greenshift"); ?>
                    </label>
                    <img src="<?php echo GREENSHIFT_THEME_DIR ?>/inc/admin_menu/onboard/img/query.webp" alt="createpage-image" class="createpageImage">
                </div>
                <div class="page-element-outer-container">
                    <label>
                        <input type="checkbox" name="selected_pages[]" value="contact" <?php echo in_array('contact', $onboard_options['selected_pages']) ? 'checked' : '' ?>>
                        <?php esc_html_e("Contact Us", "greenshift"); ?>
                    </label>
                    <img src="<?php echo GREENSHIFT_THEME_DIR ?>/inc/admin_menu/onboard/img/contact.webp" alt="createpage-image" class="createpageImage">
                </div>
                <div class="page-element-outer-container">
                    <label>
                        <input type="checkbox" name="selected_pages[]" value="price" <?php echo in_array('price', $onboard_options['selected_pages']) ? 'checked' : '' ?>>
                        <?php esc_html_e("Price page", "greenshift"); ?>
                    </label>
                    <img src="<?php echo GREENSHIFT_THEME_DIR ?>/inc/admin_menu/onboard/img/pricetable.webp" alt="createpage-image" class="createpageImage">
                </div>
                <div class="page-element-outer-container">
                    <label>
                        <input type="checkbox" name="selected_pages[]" value="team" <?php echo in_array('team', $onboard_options['selected_pages']) ? 'checked' : '' ?>>
                        <?php esc_html_e("Team page", "greenshift"); ?>
                    </label>
                    <img src="<?php echo GREENSHIFT_THEME_DIR ?>/inc/admin_menu/onboard/img/team.webp" alt="createpage-image" class="createpageImage">
                </div>
                <div class="page-element-outer-container">
                    <label>
                        <input type="checkbox" name="selected_pages[]" value="comparison" <?php echo in_array('comparison', $onboard_options['selected_pages']) ? 'checked' : '' ?>>
                        <?php esc_html_e("Product Comparison Results Page", "greenshift"); ?>
                    </label>
                    <img src="<?php echo GREENSHIFT_THEME_DIR ?>/inc/admin_menu/onboard/img/comparison.webp" alt="createpage-image" class="createpageImage">
                    <p><a href="<?php echo admin_url('admin.php?page=greenshift_dashboard-addons'); ?>" class="button button-primary"><?php esc_html_e("Product Comparison requires Woocommerce addon", "greenshift"); ?></a></p>
                </div>
                <div class="page-element-outer-container">
                    <label>
                        <input type="checkbox" name="selected_pages[]" value="wishlist" <?php echo in_array('wishlist', $onboard_options['selected_pages']) ? 'checked' : '' ?>>
                        <?php esc_html_e("Wishlist page", "greenshift"); ?>
                    </label>
                    <img src="<?php echo GREENSHIFT_THEME_DIR ?>/inc/admin_menu/onboard/img/wishlist.webp" alt="createpage-image" class="createpageImage">
                    <p><a href="<?php echo admin_url('admin.php?page=greenshift_dashboard-addons'); ?>" class="button button-primary"><?php esc_html_e("Wishlist requires Query addon", "greenshift"); ?></a></p>
                </div>
            </div>
        </div>
        </div>
        <div style="display:flex; gap: 15px; ">
            <input type="submit" name="gspb_save_settings"
            value="<?php esc_attr_e('Save', 'greenshift') ?>"
            class="button button-secondary button-large" style="margin: 20px 0 10px 0">
            <input type="submit" name="gspb_save_settings_next"
                value="<?php esc_attr_e('Save and Continue', 'greenshift') ?>"
                class="button button-primary button-large" style="margin: 20px 0 10px 0">
        </div>
    </form>
</div>
<?php
// Exit if accessed directly.
if (!defined('ABSPATH')) {
    exit;
}
if (!current_user_can('manage_options')) {
    wp_die('Unauthorized user');
}

GreenshiftMenuSettings::greenshift_check_addons();
?>
<style scoped>
        [type="radio"]:checked,
[type="radio"]:not(:checked) {
    position: absolute;
    left: -9999px;
}
[type="radio"]:checked + label,
[type="radio"]:not(:checked) + label
{
    position: relative;
    padding-left: 28px;
    cursor: pointer;
    line-height: 20px;
    display: inline-block;
    color: #666;
}
[type="radio"]:checked + label:before,
[type="radio"]:not(:checked) + label:before {
    content: '';
    position: absolute;
    left: 0;
    top: 0;
    width: 18px;
    height: 18px;
    border: 1px solid #ddd;
    border-radius: 100%;
    background: #fff;
}
[type="radio"]:checked + label:after,
[type="radio"]:not(:checked) + label:after {
    content: '';
    width: 12px;
    height: 12px;
    background: #2184f9;
    position: absolute;
    top: 4px;
    left: 4px;
    border-radius: 100%;
    -webkit-transition: all 0.2s ease;
    transition: all 0.2s ease;
}
[type="radio"]:not(:checked) + label:after {
    opacity: 0;
    -webkit-transform: scale(0);
    transform: scale(0);
}
[type="radio"]:checked + label:after {
    opacity: 1;
    -webkit-transform: scale(1);
    transform: scale(1);
}
    .gspb_main_buttons #gspb_template_import_btns .gspb_layout_button+div {
        display: none;
    }
    .gspb_main_buttons {
        padding: 20px 0 !important;
    }

    .browser-template {
        height: 800px;
        overflow: hidden;
        border: 3px solid #dedede;
        border-top: none;
        border-radius: 8px;
    }

    .browser-template__top-bar {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        padding: 10px;
        background: #dedede;
    }

    .browser-template__buttons {
        display: flex;
    }

    .browser-template__buttons_item {
        width: 10px;
        height: 10px;
        margin-left: 5px;
        border-radius: 100px;
        background: #c5c5c5;
    }

    .browser-template__buttons_item:first-child {
        margin-left: 0;
    }

    .browser-template__address {
        flex-basis: 0;
        flex-grow: 1;
        max-width: 100%;
        height: 25px;
        margin: 0 15px;
        border-radius: 4px;
        background: #f8f8f8;
    }

    .browser-template__controls {
        display: flex;
    }

    .browser-template__controls_item {
        width: 12px;
        height: 12px;
        margin-left: 10px;
        color: #b8b8b8;
    }

    .browser-template__controls_item:first-child {
        margin-left: 0;
    }

    .browser-template {
        margin: 0 auto;
        max-width: 1200px;
        height: 60vh;
        display: flex;
        flex-direction: column;
    }

    iframe {
        height: calc(100% - 45px);
    }
</style>
<div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-efb64efe-d083" id="gspb_container-id-gsbp-efb64efe-d083">
    <h2 id="gspb_heading-id-gsbp-ca0b0ada-6561" class="gspb_heading gspb_heading-id-gsbp-ca0b0ada-6561 "><?php echo esc_html($title); ?></h2>
</div>
<?php
$args = array(
    'sort_order' => 'asc',
    'sort_column' => 'post_title',
    'post_type' => 'page',
    'post_status' => 'publish'
);
$pages = get_pages($args);
$front_page_option = get_option('show_on_front');
$defaultHome = true;
$importedTemplate = get_option('gspb_imported_template');
$front_page_id = $blog_posts_page_id = $page_path = '';
if ($front_page_option === 'page') {
    // Static page option is enabled
    $front_page_id = get_option('page_on_front');
    $blog_posts_page_id = get_option('page_for_posts');
    $page_path = get_permalink($front_page_id);
    $defaultHome = false;
}

if (
    (isset($_POST['gspb_save_settings']) || isset($_POST['gspb_save_settings_next'])) && isset($_POST['gspb_settings_field']) &&
    wp_verify_nonce(
        sanitize_text_field(wp_unslash($_POST['gspb_settings_field'])),
        'gspb_settings_page_action'
    )
) {

    if (sanitize_text_field($_POST['homepage_display'])) {
        switch (sanitize_text_field($_POST['homepage_display'])) {
            case 'default':
                // Just update the option.
                update_option('show_on_front', 'posts');
                delete_option('page_on_front');
                break;
            case 'page':
                // Update globa$global_settings for homepage + blog page.
                update_option('show_on_front', 'page');
                if (sanitize_text_field($_POST['home_id'])) {
                    update_option('page_on_front', absint(sanitize_text_field($_POST['home_id'])));
                }
                break;
        }
    }

    if (isset($_POST['gspb_save_settings_next'])) {
        wp_redirect(admin_url('admin.php?page=greenshift_theme_settings&tab=header'));
        exit;
    }
}
if (
    isset($_POST['gspb_create_new_page']) && isset($_POST['gspb_settings_field']) &&
    wp_verify_nonce(
        sanitize_text_field(wp_unslash($_POST['gspb_settings_field'])),
        'gspb_settings_page_action'
    )
) {
    $new_page = array(
        'post_title' => esc_html__('Home', 'greenshift'),
        'post_status' => 'publish',
        'post_type' => 'page',
        'post_content' => '',
    );
    $page_id = wp_insert_post($new_page);
    if ($page_id) {
        update_option('page_on_front', $page_id);
        update_option('show_on_front', 'page');
        update_post_meta( $page_id, '_wp_page_template', 'no-title' );
        wp_redirect(admin_url('admin.php?page=greenshift_theme_settings&tab=home'));
        exit;
    }
}

?>

<div class="greenshift_form wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-7b4f8e8f-1a69" id="gspb_container-id-gsbp-7b4f8e8f-1a69">
    <input type="text" name="blogPostId" id="blogpostpageId" value="<?php echo $blog_posts_page_id; ?>" style="display: none">
    <form method="POST">
        <?php wp_nonce_field('gspb_settings_page_action', 'gspb_settings_field'); ?>
        <div class="settings-container">
            <div>
                <p>
                    <?php esc_html_e("Select How you want to show your Home page. You can change this later", "greenshift"); ?>
                </p>
            </div>
        </div>
        <div class="settings-container">
            <div>
                <h4>
                    <?php esc_html_e("Your homepage displays", "greenshift"); ?>
                </h4>
            </div>
            <div class="flex-right">
                <div style="width: fit-content; display: flex; flex-direction: column; gap: 15px">
                    <div>
                        <input type="radio" name="homepage_display" value="default" id="home1" onchange="handleRadioButtonChange(this)" <?php echo ($defaultHome) ? 'checked' : ''; ?>>
                        <label for="home1">
                        <?php esc_html_e("Homepage Template", "greenshift"); ?>. <?php esc_html_e("You can edit template later in", "greenshift"); ?> <a href="<?php echo admin_url('site-editor.php?postType=wp_template&postId=greenshift%2F%2Fhome&canvas=edit'); ?>" target="_blank"><?php esc_html_e("Site Editor", "greenshift"); ?></a>
                        </label>
                    </div>
                    <div>
                        <input type="radio" name="homepage_display" value="page" id="home2" onchange="handleRadioButtonChange(this)" <?php echo ($front_page_option === 'page') ? 'checked' : ''; ?>>
                        <label for="home2">
                        <?php esc_html_e("A custom page and template library", "greenshift"); ?>
                        </label>
                    </div>

                    <div style="display:flex; gap:20px">
                        <select label="Styles" name="home_id" id="homepage_display_papge" onchange="pagechaged(this)" style="display: <?php echo ($front_page_option === 'page') ? 'block' : 'none'; ?>">
                        <option value=''>
                            <?php esc_html_e('Select a page', 'greenshift'); ?>
                        </option>
                        <?php foreach ($pages as $page) { ?>
                            <option value="<?php echo esc_attr($page->ID) ?>" <?php selected($front_page_id, esc_html($page->ID)); ?>>
                                <?php echo esc_html($page->post_title) ?>
                            </option>
                        <?php } ?>
                    </select>
                    <input style="display: <?php echo ($front_page_option === 'page') ? 'block' : 'none'; ?>" type="submit" name="gspb_create_new_page" id="gspb_create_new_page" value="<?php esc_attr_e('Create New Home Page', 'greenshift') ?>" class="button button-secondary button-large" style="margin-top: 20px">
                    <a href="<?php echo admin_url('site-editor.php?postType=page&postId='.$front_page_id.'&canvas=edit'); ?>" style="display: <?php echo ($front_page_option === 'page' && $front_page_id) ? 'block' : 'none'; ?>" class="edithome" target="_blank"><?php esc_html_e('Edit Home Page', 'greenshift') ?></a>
                    </div>

                    <div class="gspb_main_buttons" style="display: <?php echo ($front_page_option === 'page' && $front_page_id) ? 'block' : 'none'; ?>">
                            <div id="gspb_template_import_btns" data-type="home" data-id="<?php echo (int)$front_page_id;?>" data-tab="Layout"></div>
                        </div>

                </div>
            </div>
        </div>
        <div class="settings-container">
            <div class="browser-template">
                <div class="browser-template__top-bar">
                    <ul class="browser-template__buttons">
                        <li class="browser-template__buttons_item"></li>
                        <li class="browser-template__buttons_item"></li>
                        <li class="browser-template__buttons_item"></li>
                    </ul>

                    <div class="browser-template__address">

                    </div>

                    <ul class="browser-template__controls">
                        <li class="browser-template__controls_item">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                <path fill="currentColor" d="M229.9 473.899l19.799-19.799c4.686-4.686 4.686-12.284 0-16.971L94.569 282H436c6.627 0 12-5.373 12-12v-28c0-6.627-5.373-12-12-12H94.569l155.13-155.13c4.686-4.686 4.686-12.284 0-16.971L229.9 38.101c-4.686-4.686-12.284-4.686-16.971 0L3.515 247.515c-4.686 4.686-4.686 12.284 0 16.971L212.929 473.9c4.686 4.686 12.284 4.686 16.971-.001z" />
                            </svg>
                        </li>
                        <li class="browser-template__controls_item">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                <path fill="currentColor" d="M218.101 38.101L198.302 57.9c-4.686 4.686-4.686 12.284 0 16.971L353.432 230H12c-6.627 0-12 5.373-12 12v28c0 6.627 5.373 12 12 12h341.432l-155.13 155.13c-4.686 4.686-4.686 12.284 0 16.971l19.799 19.799c4.686 4.686 12.284 4.686 16.971 0l209.414-209.414c4.686-4.686 4.686-12.284 0-16.971L235.071 38.101c-4.686-4.687-12.284-4.687-16.97 0z" />
                            </svg>
                        </li>
                        <li class="browser-template__controls_item">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path fill="currentColor" d="M483.515 28.485L431.35 80.65C386.475 35.767 324.485 8 256.001 8 119.34 8 7.9 119.525 8 256.185 8.1 393.067 119.095 504 256 504c63.926 0 122.202-24.187 166.178-63.908 5.113-4.618 5.353-12.561.482-17.433l-19.738-19.738c-4.498-4.498-11.753-4.785-16.501-.552C351.787 433.246 306.105 452 256 452c-108.321 0-196-87.662-196-196 0-108.321 87.662-196 196-196 54.163 0 103.157 21.923 138.614 57.386l-54.128 54.129c-7.56 7.56-2.206 20.485 8.485 20.485H492c6.627 0 12-5.373 12-12V36.971c0-10.691-12.926-16.045-20.485-8.486z" />
                            </svg>
                        </li>
                    </ul>
                </div>

                <div id="iframeContainer" style="flex-grow:1">
                    <iframe title="Iframe" id="greenshift-homepage-iframe" style="width:100%;" src="<?php echo esc_url( home_url() ); ?>?admin_bar=false">
                    </iframe>
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

    <script>
        function handleRadioButtonChange(radioButton) {
            var selectedValue = radioButton.value;
            switch (selectedValue) {
                case 'default':
                    document.querySelector('#homepage_display_papge').style.display = 'none';
                    document.querySelector('.gspb_main_buttons').style.display = 'none';
                    document.querySelector('#gspb_create_new_page').style.display = 'none';
                    document.querySelector('.edithome').style.display = 'none';
                    document.querySelector('#iframeContainer').classList.add('high-z-index');
                    // Make a POST request to update the 'show_on_front' option
                    fetch(`${window.location.origin}/wp-json/wp/v2/settings`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-WP-Nonce': wpApiSettings.nonce // Include the nonce for authentication
                    },
                    body: JSON.stringify({
                        show_on_front: 'posts'
                    })
                    })
                    .then(response => {
                        if (response.ok) {
                            document.querySelector('#iframeContainer').children[0].setAttribute('src', window.location.origin);
                            document.getElementById("homepage_display_papge").value = '';
                        } else {
                            throw new Error('Failed to update show_on_front option');
                        }
                    })
                    .catch(error => {
                        console.error(error);
                    });
                    break;
                case 'page':
                    // Make a POST request to update the 'show_on_front' option
                    fetch(`${window.location.origin}/wp-json/wp/v2/settings`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-WP-Nonce': wpApiSettings.nonce // Include the nonce for authentication
                    },
                    body: JSON.stringify({
                        show_on_front: 'page'
                    })
                    })
                    .then(response => {
                        if (response.ok) {
                            

                        } else {
                            throw new Error('Failed to update show_on_front option');
                        }
                    })
                    .catch(error => {
                        console.error(error);
                    });
                    if(document.querySelector('#homepage_display_papge').value != ''){
                        document.querySelector('.gspb_main_buttons').style.display = 'block';
                        document.querySelector('.edithome').style.display = 'block';
                        document.querySelector('.edithome').setAttribute('href', `${window.location.origin}/site-editor.php?postType=page&postId=${document.querySelector('#homepage_display_papge').value}&canvas=edit`);
                    }
                    document.querySelector('#gspb_create_new_page').style.display = 'block';
                    document.querySelector('#homepage_display_papge').style.display = 'block';
                    break;
            }
        };

        function pagechaged(pageselector) {
            var selectedOption = pageselector.options[pageselector.selectedIndex];
            var pageId = selectedOption.value;
            if (pageId != '') {
                document.querySelector('.gspb_main_buttons').style.display = 'block';
                document.querySelector('#gspb_template_import_btns').setAttribute('data-id', pageId);
                document.querySelector('.edithome').style.display = 'block';
                document.querySelector('.edithome').setAttribute('href', `${window.location.origin}/wp-admin/site-editor.php?postType=page&postId=${document.querySelector('#homepage_display_papge').value}&canvas=edit`);
            } else {
                document.querySelector('.gspb_main_buttons').style.display = 'none';
                document.querySelector('.edithome').style.display = 'none';
                document.querySelector('#gspb_template_import_btns').setAttribute('data-id', '');
                return false;
            }
            document.querySelector('#iframeContainer').classList.add('high-z-index');
            fetch(`${window.location.origin}/wp-json/wp/v2/pages/${pageId}`)
                .then(response => response.json())
                .then(data => {
                    if (data.link) {
                        document.querySelector('#iframeContainer').children[0].setAttribute('src', data.link);
                    } else {
                        console.error('Error:', data.error || 'Unable to retrieve permalink');
                    }
                    document.querySelector('#iframeContainer').classList.remove('high-z-index');
                })
                .catch(error => {
                    console.error('AJAX request failed');
                    document.querySelector('#iframeContainer').classList.remove('high-z-index');
                });
        }

        jQuery(document).ready(function($) {
            const iframeContainer = document.querySelector('#iframeContainer');
            var iframe = document.getElementById('greenshift-homepage-iframe');

            // Access the iframe's document object
            var iframeDocument = iframe.contentWindow.document;

            // Create a <style> element and set its content to your CSS code
            var styleElement = iframeDocument.createElement('style');
            styleElement.innerHTML = '#wpadminbar{display:none}html{margin:0 !important}';

            // Append the <style> element to the head of the iframe's document
            iframeDocument.head.appendChild(styleElement);
            const deviceWidth = 1600;
            const scaleFactor = (iframeContainer.clientWidth) / deviceWidth;

            iframeContainer.children[0].style.width = deviceWidth + "px";
            iframeContainer.children[0].style.height = (iframeContainer.clientHeight) / scaleFactor + "px";
            iframeContainer.children[0].style.transform = `scale(${scaleFactor})`;
            iframeContainer.children[0].style.transformOrigin = 'top left';
            window.addEventListener('resize', () => {
                const iframeContainer = document.querySelector('#iframeContainer');
                const deviceWidth = 1600;
                const scaleFactor = (iframeContainer.clientWidth) / deviceWidth;

                iframeContainer.children[0].style.width = deviceWidth + "px";
                iframeContainer.children[0].style.height = (iframeContainer.clientHeight) / scaleFactor + "px";
                iframeContainer.children[0].style.transform = `scale(${scaleFactor})`;
                iframeContainer.children[0].style.transformOrigin = 'top left';

            });
        });
    </script>
</div>
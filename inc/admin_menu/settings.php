<?php
// Exit if accessed directly
if (!defined('ABSPATH')) {
	exit;
}

if (!class_exists('GreenshiftMenuSettings')) {
	class GreenshiftMenuSettings
	{

		private $global_settings;
		public function __construct()
		{
			$this->global_settings = get_option('greenshift_theme_options');
			add_action('admin_menu', array($this, 'greenshift_admin_page'));
			add_action('wp_footer', array($this, 'greenshift_show_footer_scripts'));
			add_action('wp_head', array($this, 'greenshift_show_header_settings'));
			add_action('block_editor_settings_all', array($this, 'greenshift_show_editor_header_settings'));
			add_filter('body_class', array($this, 'greenshift_theme_body_classes'));
			add_action('rest_api_init', array($this, 'greenshift_theme_register_route'));
			add_action( 'after_switch_theme', array($this, 'greenshift_theme_activate') );
			add_action( 'admin_notices', array($this, 'greenshift_theme_notices') );
		}

		function greenshift_theme_notices() {
			?>
			<?php if (!defined('GREENSHIFT_DIR_PATH')) :?>
			<div class="notice notice-success settings-error">
					<p>
					<?php esc_html_e("To get Full Power of this theme, please, install Greenshift Companion plugin", 'greenshift'); ?>
						<a href="<?php echo admin_url("plugin-install.php?s=Greenshift%2520%25E2%2580%2593%2520animation%2520and%2520page%2520builder%2520blocks&tab=search&type=term");?>">
						<?php esc_html_e("Install Core Greenshift plugin", 'greenshift');?> →
						</a>
					</p>
			</div>
			<?php endif;?>
			<?php
		}

		function greenshift_theme_activate() {
			if( isset( $_GET['activated'] ) ) {
				wp_safe_redirect( admin_url('themes.php?page=greenshifttheme_settings') );
				exit;
			}
		}

		public function greenshift_show_header_settings()
		{
			$global_settings = $this->global_settings;

			//Custom Fonts
			$global_settings = get_option('greenshift_theme_options');
			$primaryfont = !empty($global_settings['primary_font']) ? $global_settings['primary_font'] : '';
			$secondaryfont = !empty($global_settings['secondary_font']) ? $global_settings['secondary_font'] : '';
			$tertiaryfont = !empty($global_settings['tertiary_font']) ? $global_settings['tertiary_font'] : '';
			if ($primaryfont == 'variable' || $secondaryfont == 'variable' || $secondaryfont == 'variable') {
				echo '<style>@font-face{font-family:"Mona Sans";src:url(' . GREENSHIFT_THEME_DIR . '/assets/fonts/Mona/MonaSans.woff2) format("woff2 supports variations"),url(' . GREENSHIFT_THEME_DIR . '/assets/fonts/Mona/MonaSans.woff2) format("woff2-variations");font-weight:200 900;font-stretch:75% 125%}</style>';
			}
			if ($primaryfont == 'variable') {
				$primaryfont = "Mona Sans";
			}
			if ($secondaryfont == 'variable') {
				$secondaryfont = "Mona Sans";
			}
			if ($tertiaryfont == 'variable') {
				$tertiaryfont = "Mona Sans";
			}
			if ($primaryfont || $secondaryfont || $tertiaryfont) {
				$primary = $primaryfont ? '--greenshift-primary-fontfamily:' . wp_unslash($primaryfont) . ';' : '';
				$secondary = $secondaryfont ? '--greenshift-secondary-fontfamily:' . wp_unslash($secondaryfont) . ';' : '';
				$tertiary = $tertiaryfont ? '--greenshift-tertiary-fontfamily:' . wp_unslash($tertiaryfont) . ';' : '';
				echo '<style>body{' . $primary . $secondary . $tertiary . '}</style>';
			}
		}

		public function greenshift_show_editor_header_settings($settings)
		{
			$global_settings = $this->global_settings;
			$primaryfont = !empty($global_settings['primary_font']) ? $global_settings['primary_font'] : '';
			$secondaryfont = !empty($global_settings['secondary_font']) ? $global_settings['secondary_font'] : '';
			$tertiaryfont = !empty($global_settings['tertiary_font']) ? $global_settings['tertiary_font'] : '';
			if ($primaryfont == 'variable' || $secondaryfont == 'variable' || $secondaryfont == 'variable') {
				$settings['styles'][] = array('css' => '@font-face{font-family:"Mona Sans";src:url(' . GREENSHIFT_THEME_DIR . '/assets/fonts/Mona/MonaSans.woff2) format("woff2 supports variations"),url(' . GREENSHIFT_THEME_DIR . '/assets/fonts/Mona/MonaSans.woff2) format("woff2-variations");font-weight:200 900;font-stretch:75% 125%}');
			}
			if ($primaryfont == 'variable') {
				$primaryfont = "Mona Sans";
			}
			if ($secondaryfont == 'variable') {
				$secondaryfont = "Mona Sans";
			}
			if ($tertiaryfont == 'variable') {
				$tertiaryfont = "Mona Sans";
			}
			if ($primaryfont || $secondaryfont || $tertiaryfont) {
				$primary = $primaryfont ? '--greenshift-primary-fontfamily:' . wp_unslash($primaryfont) . ';' : '';
				$secondary = $secondaryfont ? '--greenshift-secondary-fontfamily:' . wp_unslash($secondaryfont) . ';' : '';
				$tertiary = $tertiaryfont ? '--greenshift-tertiary-fontfamily:' . wp_unslash($tertiaryfont) . ';' : '';
				$settings['styles'][] = array('css' => 'body{' . $primary . $secondary . $tertiary . '}');
			}
			return $settings;
		}

		public function greenshift_show_footer_scripts()
		{
			$global_settings = $this->global_settings;
			if (!empty($global_settings['backtotop'])) {
				wp_enqueue_script('greenshift-totop-init');
			}
			if (!empty($global_settings['progressbar']) && is_singular('post')) {
				wp_enqueue_script('greenshift-progressbar');
			}
		}

		public function greenshift_theme_body_classes($classes)
		{
			$classes[] = 'greenshift-theme';
			return $classes;
		}

		public function greenshift_admin_page()
		{

			add_theme_page(
				'GreenShift Theme Options',
				'Theme Options',
				'edit_theme_options',
				'greenshifttheme_settings',
				array($this, 'themeoptions_page')
			);
			if(defined('GREENSHIFT_DIR_PATH')){
				add_submenu_page(
					'greenshift_dashboard',
					esc_html__('Theme Settings', 'greenshift'),
					esc_html__('Theme Settings', 'greenshift'),
					'manage_options',
					'greenshift_theme_settings',
					array($this, 'theme_settings_page')
				);
			}
		}

		public function themeoptions_page()
		{

			require_once GREENSHIFT_THEME_PATH . '/inc/admin_menu/welcome-page.php';
		}

		public function theme_settings_page()
		{
			require_once GREENSHIFT_THEME_PATH . '/inc/admin_menu/onboard.php';
		}

		public function greenshift_theme_register_route(){
			register_rest_route(
				'greenshift/v1',
				'/importtemplatepart/',
				array(
					array(
						'methods'             => 'POST',
						'callback'            => array($this, 'greenshift_theme_import_template'),
						'permission_callback' => function () {
							return current_user_can('manage_options');
						},
						'args'                => array(),
					),
				)
			);
		}
		function greenshift_theme_import_template($request)
		{
			try {
				$params = $request->get_params();

				$pageid = (int)$params['pageid'];
				$content = json_decode($params['content'], true);
				wp_update_post(array(
					'ID' => $pageid,
					'post_content' => wp_slash($content),
				));
				return json_encode(array(
					'success' => true,
					'message' => 'Template is imported!',
				));
			} catch (Exception $e) {
				return json_encode(array(
					'success' => false,
					'message' => $e->getMessage(),
				));
			}
		}
		public static function greenshift_check_addons(){
			if(!defined('GREENSHIFT_DIR_PATH') || !defined('GREENSHIFT_DIR_URL')){
				return;
			}
			$library_asset_file = include(GREENSHIFT_DIR_PATH . 'build/gspbLibrary.asset.php');
			wp_enqueue_script(
				'greenShift-library-script',
				GREENSHIFT_DIR_URL . 'build/gspbLibrary.js',
				array('wp-blocks', 'wp-i18n', 'wp-element', 'wp-editor', 'wp-data', 'wp-plugins', 'wp-edit-post'),
				$library_asset_file['version'],
				false
			);
			wp_enqueue_script(
				'greenShift-editor-js',
				GREENSHIFT_DIR_URL . 'build/gspbCustomEditor.js',
				array('greenShift-library-script', 'jquery', 'wp-data', 'wp-element'),
				$library_asset_file['version'],
				true
			);
			wp_enqueue_style('greenShift-library-editor');
			wp_enqueue_style('greenShift-block-css');
			$addonlink = admin_url('admin.php?page=greenshift_upgrade');
			$updatelink = $addonlink;
			wp_localize_script(
				'greenShift-library-script',
				'greenShift_params',
				array(
					'ajaxUrl' => admin_url('admin-ajax.php'),
					'pluginURL' => GREENSHIFT_DIR_URL,
					'theme' => 'greenshift',
					'isRehub' => '',
					'addonLink' => $addonlink,
					'updateLink' => $updatelink,
				)
			);

			$licenses = greenshift_edd_check_all_licenses();

			$is_query_active = (((!empty($licenses['all_in_one']) && $licenses['all_in_one'] == 'valid') || (!empty($licenses['query_addon']) && $licenses['query_addon'] == 'valid') || (!empty($licenses['all_in_one_woo']) && $licenses['all_in_one_woo'] == 'valid') || (!empty($licenses['all_in_one_design']) && $licenses['all_in_one_design'] == 'valid') || (!empty($licenses['all_in_one_seo']) && $licenses['all_in_one_seo'] == 'valid'))) ? true : false;
	
			$check = '';
			if ($is_query_active ) {
				$check = 1;
			}
			$lc = array('can_use_premium_code' => $check);
			wp_localize_script('greenShift-library-script', 'greenshiftQUERY', $lc);

			$is_woo_active = (((!empty($licenses['all_in_one']) && $licenses['all_in_one'] == 'valid') || (!empty($licenses['all_in_one_woo']) && $licenses['all_in_one_woo'] == 'valid') || (!empty($licenses['woocommerce_addon']) && $licenses['woocommerce_addon'] == 'valid'))) ? true : false;

			$check = '';
			if ($is_woo_active) {
				$check = 1;
			}
			$lc = array('can_use_premium_code' => $check);
			wp_localize_script('greenShift-library-script', 'greenshiftWOO', $lc);

			$is_gsap_active = ((!empty($licenses['all_in_one']) && $licenses['all_in_one'] == 'valid') || (!empty($licenses['gsap_addon']) && $licenses['gsap_addon'] == 'valid') || (!empty($licenses['all_in_one_design']) && $licenses['all_in_one_design'] == 'valid')) ? true : false;

			$check = '';
			if ($is_gsap_active) {
				$check = 1;
			}
			$lc = array('can_use_premium_code' => $check,);
			wp_localize_script('greenShift-library-script', 'greenshiftGSAP', $lc);
		}
	}
}

//////////////////////////////////////////////////////////////////
// Theme setup in GS
//////////////////////////////////////////////////////////////////


add_action('greenshift_admin_menu', 'greenshift_theme_settings_menu');
function greenshift_theme_settings_menu($activetab)
{
	echo $activetab;
	$default_tab = null;
	$tab  = isset($_GET['tab']) ? sanitize_text_field($_GET['tab']) : $default_tab;
	$activetab  = isset($_GET['page']) ? sanitize_text_field($_GET['page']) : $default_tab;
	$class = ($activetab == "greenshift_theme_settings") ? " active" : "";
	$svg = '<svg xmlns="http://www.w3.org/2000/svg" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" width="18px" height="18px" viewBox="0 0 512 512"><path fill="#ccc" d="M256 0c70.69 0 134.69 28.66 181.02 74.98C483.34 121.31 512 185.31 512 256c0 70.69-28.66 134.69-74.98 181.02C390.69 483.34 326.69 512 256 512c-70.69 0-134.69-28.66-181.02-74.98C28.66 390.69 0 326.69 0 256c0-70.69 28.66-134.69 74.98-181.02C121.31 28.66 185.31 0 256 0zm147.19 108.81C365.52 71.15 313.48 47.85 256 47.85c-57.48 0-109.52 23.3-147.19 60.96C71.15 146.48 47.85 198.52 47.85 256c0 57.48 23.3 109.52 60.96 147.19 37.67 37.66 89.71 60.96 147.19 60.96 57.48 0 109.52-23.3 147.19-60.96 37.66-37.67 60.96-89.71 60.96-147.19 0-57.48-23.3-109.52-60.96-147.19z"/></svg>';
	$svgactive = '<svg fill="green"  xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 122.88 122.88"><g><path d="M61.439,0L61.439,0v0.016c-16.976,0-32.335,6.874-43.443,17.981S0.016,44.464,0.016,61.438H0v0.002l0,0h0.016 c0,16.978,6.874,32.336,17.981,43.444c11.107,11.106,26.467,17.98,43.441,17.98v0.016h0.002l0,0v-0.016 c16.977,0,32.336-6.874,43.443-17.98c11.107-11.108,17.981-26.467,17.981-43.441h0.016v-0.003l0,0h-0.016 c0-16.976-6.874-32.335-17.981-43.442S78.416,0.016,61.442,0.016V0H61.439L61.439,0z M51.181,42.479 c-1.909-1.964-1.864-5.1,0.098-7.01c1.961-1.909,5.1-1.866,7.009,0.098l21.838,22.519l-3.554,3.456l3.569-3.458 c1.91,1.971,1.862,5.116-0.108,7.027c-0.057,0.057-0.115,0.109-0.175,0.161L58.288,87.329c-1.909,1.963-5.048,2.007-7.009,0.097 c-1.962-1.907-2.007-5.045-0.098-7.009l18.473-18.889L51.181,42.479L51.181,42.479z"/></g></svg>';
	$svgready = '<svg fill="green" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20x" height="20px" viewBox="0 0 122.881 122.88"><g><path d="M61.44,0c33.933,0,61.441,27.507,61.441,61.439 c0,33.933-27.508,61.44-61.441,61.44C27.508,122.88,0,95.372,0,61.439C0,27.507,27.508,0,61.44,0L61.44,0z M34.106,67.678 l-0.015-0.014c-0.785-0.718-1.207-1.685-1.256-2.669c-0.049-0.982,0.275-1.985,0.984-2.777c0.01-0.011,0.019-0.021,0.029-0.031 c0.717-0.784,1.684-1.207,2.668-1.256c0.989-0.049,1.998,0.28,2.792,0.998l12.956,11.748l31.089-32.559v0 c0.74-0.776,1.723-1.18,2.719-1.204c0.992-0.025,1.994,0.329,2.771,1.067v0.001c0.777,0.739,1.18,1.724,1.205,2.718 c0.025,0.993-0.33,1.997-1.068,2.773L55.279,81.769c-0.023,0.024-0.048,0.047-0.073,0.067c-0.715,0.715-1.649,1.095-2.598,1.13 c-0.974,0.037-1.963-0.293-2.744-1L34.118,67.688L34.106,67.678L34.106,67.678L34.106,67.678z"/></g></svg>';
	echo '<div class="gspb_iconsList__item'.$class.'" data-id="22"><a class="gspb_iconsList__link" href="'.admin_url('admin.php?page=greenshift_theme_settings').'" rel="noopener"></a>
	<svg  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="display:inline-block;vertical-align:middle" width="18" height="18" x="0px" y="0px" viewBox="0 0 122.88 98.21"><g><path class="st0" d="M49.11,35.13c7.2,5.16,18.74-0.38,23.28,8.6c1.2,2.38,1.46,5.64,0.38,8.23c-0.44,1.04-1.08,1.97-1.96,2.68 c-0.39,0.31-0.82,0.59-1.3,0.83c-5.92,2.94-12.1-1.17-15.37-6.14C51.13,44.75,49.82,39.04,49.11,35.13L49.11,35.13z M100.01,0H7.26 C3.27,0,0,3.27,0,7.26v77.78c0,3.99,3.27,7.26,7.26,7.26h72.36l-6.27-5.34H7.12c-0.56,0-1.05-0.21-1.42-0.59 c-0.37-0.37-0.59-0.87-0.59-1.42V20.33H5.08h96.79V50l5.4,4.38V7.26C107.27,3.27,104,0,100.01,0L100.01,0z M14.17,8.16 c-1.98,0-3.59,1.61-3.59,3.59c0,1.98,1.61,3.58,3.59,3.58c1.98,0,3.59-1.61,3.59-3.58C17.76,9.77,16.15,8.16,14.17,8.16L14.17,8.16 z M38.48,8.16c-1.98,0-3.59,1.61-3.59,3.59c0,1.98,1.6,3.58,3.59,3.58c1.98,0,3.59-1.61,3.59-3.58 C42.07,9.77,40.46,8.16,38.48,8.16L38.48,8.16z M26.33,8.16c-1.98,0-3.59,1.61-3.59,3.59c0,1.98,1.61,3.58,3.59,3.58 c1.98,0,3.59-1.61,3.59-3.58C29.91,9.77,28.31,8.16,26.33,8.16L26.33,8.16z M85.63,74.54c4.01-3.2,7.12-6.89,9.24-11.12l25.8,27.21 c1.95,1.84,3.05,3.41,1.42,6.23c-0.81,0.83-1.67,1.28-2.58,1.34c-0.9,0.06-1.85-0.26-2.84-0.98L85.63,74.54L85.63,74.54z M72.02,58.75c1.74-0.93,4.12-3.23,4.69-5.74l16.15,8.86c-2.33,4.64-5.3,8.61-9.37,11.43C79.24,67.6,76.86,64.16,72.02,58.75 L72.02,58.75z"/></g></svg><span class="gspb_iconsList__item__text">'.esc_html__("Theme Settings", 'greenshift').'</span></div>';
	if($activetab == 'greenshift_theme_settings'){
		echo '<style scoped>.theme_settings_menu{font-size:14px; margin-bottom:35px; margin-top:5px}.theme_settings_menu_item{margin-bottom:12px; margin-left:25px}.theme_settings_menu_item a{display:flex; gap:10px; align-items:center; color: #111; text-decoration:none}.theme_settings_menu_item.active{font-weight:bold}</style>';
		echo '<div class="theme_settings_menu">';

			echo '<div class="theme_settings_menu_item'.(($tab == null || $tab == 'brand') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=brand').'" class="theme_settings_menu_link">'.(($tab == null || $tab == 'brand') ? $svgactive : $svg) .esc_html__("Brand Settings", 'greenshift').'</a>';
			echo '</div>';

			echo '<div class="theme_settings_menu_item'.(( $tab == 'home') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=home').'" class="theme_settings_menu_link">'.(( $tab == 'home') ? $svgactive : $svg) .esc_html__("Homepage Settings", 'greenshift').'</a>';
			echo '</div>';

			echo '<div class="theme_settings_menu_item'.(( $tab == 'header') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=header').'" class="theme_settings_menu_link">'.(( $tab == 'header') ? $svgactive : $svg) .esc_html__("Header pattern", 'greenshift').'</a>';
			echo '</div>';

			echo '<div class="theme_settings_menu_item'.(( $tab == 'footer') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=footer').'" class="theme_settings_menu_link">'.(( $tab == 'footer') ? $svgactive : $svg) .esc_html__("Footer pattern", 'greenshift').'</a>';
			echo '</div>';

			echo '<div class="theme_settings_menu_item'.(( $tab == 'pages') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=pages').'" class="theme_settings_menu_link">'.(( $tab == 'pages') ? $svgactive : $svg) .esc_html__("Create Extra pages", 'greenshift').'</a>';
			echo '</div>';

			echo '<div class="theme_settings_menu_item" style="padding: 20px 0 15px 0;border-bottom: 1px solid #ddd;margin-bottom: 15px;">';
				esc_html_e("Extra Template Settings", 'greenshift');
			echo '</div>';

			echo '<div class="theme_settings_menu_item'.(( $tab == 'single') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=single').'" class="theme_settings_menu_link">'.(( $tab == 'single') ? $svgactive : $svg) .esc_html__("Single post template", 'greenshift').'</a>';
			echo '</div>';

			echo '<div class="theme_settings_menu_item'.(( $tab == 'archive') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=archive').'" class="theme_settings_menu_link">'.(( $tab == 'archive') ? $svgactive : $svg) .esc_html__("Post Archive template", 'greenshift').'</a>';
			echo '</div>';


			if(class_exists( 'woocommerce' )){
				echo '<div class="theme_settings_menu_item'.(( $tab == 'singleproduct') ? " active" : "").'">';
					echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=singleproduct').'" class="theme_settings_menu_link">'.(( $tab == 'singleproduct') ? $svgactive : $svg) .esc_html__("Single Product template", 'greenshift').'</a>';
				echo '</div>';

				echo '<div class="theme_settings_menu_item'.(( $tab == 'archiveproduct') ? " active" : "").'">';
					echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=archiveproduct').'" class="theme_settings_menu_link">'.(( $tab == 'archiveproduct') ? $svgactive : $svg) .esc_html__("Shop archive template", 'greenshift').'</a>';
				echo '</div>';

				echo '<div class="theme_settings_menu_item'.(( $tab == 'searchproduct') ? " active" : "").'">';
				echo '<a href="'.admin_url('admin.php?page=greenshift_theme_settings&tab=searchproduct').'" class="theme_settings_menu_link">'.(( $tab == 'searchproduct') ? $svgactive : $svg) .esc_html__("Search Product template", 'greenshift').'</a>';
			echo '</div>';
			}
	
		echo '</div>';
	}

}

//////////////////////////////////////////////////////////////////
// REST routes to save and get settings
//////////////////////////////////////////////////////////////////

add_action('rest_api_init', 'greenshift_theme_register_route');
function greenshift_theme_register_route()
{
	register_rest_route(
		'greenshifttheme/v1',
		'/global_settings/',
		array(
			array(
				'methods'             => 'GET',
				'callback'            => 'greenshift_theme_get_global_settings',
				'permission_callback' => function () {
					return current_user_can('edit_theme_options');
				},
				'args'                => array(),
			),
			array(
				'methods'             => 'POST',
				'callback'            => 'greenshift_theme_update_global_settings',
				'permission_callback' => function () {
					return current_user_can('edit_theme_options');
				},
				'args'                => array(),
			),
		)
	);
}

function greenshift_theme_get_global_settings()
{

	try {

		$settings = get_option('greenshift_theme_options');

		return array(
			'success'  => true,
			'settings' => $settings,
		);
	} catch (Exception $e) {
		return array(
			'success' => false,
			'message' => $e->getMessage(),
		);
	}
}

function greenshift_theme_update_global_settings($request)
{

	try {
		$params = $request->get_params();
		$defaults = get_option('greenshift_theme_options');
		$values = array();
		if(!empty($params['settings'])){
			foreach ($params['settings'] as $key => $value) {
				if (is_array($value)) {
					$values[$key] = array();
					foreach ($value as $subkey => $subvalue) {
						$values[$key][$subkey] = sanitize_text_field($subvalue);
					}
				} else {
					$values[$key] = sanitize_text_field($value);
				}
			}
		}

		if ($defaults === false) {
			add_option('greenshift_theme_options', $values);
		} else {
			$newargs = wp_parse_args($values, $defaults);
			update_option('greenshift_theme_options', $newargs);
		}

		return json_encode(array(
			'success' => true,
			'message' => 'Global settings updated!',
		));
	} catch (Exception $e) {
		return json_encode(array(
			'success' => false,
			'message' => $e->getMessage(),
		));
	}
}
<?php
/**
 * Greenshift: Block Patterns
 *
 * @since Greenshift 0.8.0
 */

/**
 * Registers block patterns, categories, and type.
 *
 * @since Greenshift 0.8.0
 */
function greenshift_register_block_patterns() {

	if ( function_exists( 'register_block_pattern_category_type' ) ) {
		// phpcs:ignore WPThemeReview.PluginTerritory.ForbiddenFunctions.editor_blocks_register_block_pattern_category_type
		register_block_pattern_category_type( 'greenshift', array( 'label' => __( 'Greenshift', 'greenshift' ) ) );
	}

	$block_pattern_categories = array(
		'greenshift-footer'  => array(
			'label'         => __( 'Greenshift Footer', 'greenshift' ),
			'categoryTypes' => array( 'greenshift' ),
		),
		'greenshift-general' => array(
			'label'         => __( 'Greenshift General', 'greenshift' ),
			'categoryTypes' => array( 'greenshift' ),
		),
		'greenshift-header'  => array(
			'label'         => __( 'Greenshift Header', 'greenshift' ),
			'categoryTypes' => array( 'greenshift' ),
		),
		'greenshift-hero'  => array(
			'label'         => __( 'Greenshift Hero Headers', 'greenshift' ),
			'categoryTypes' => array( 'greenshift' ),
		),
		'greenshift-parts'    => array(
			'label'         => __( 'Greenshift Parts', 'greenshift' ),
			'categoryTypes' => array( 'greenshift' ),
		),
		'greenshift-query'   => array(
			'label'         => __( 'Greenshift Query', 'greenshift' ),
			'categoryTypes' => array( 'greenshift' ),
		),
	);

	/**
	 * Filters the theme block pattern categories.
	 *
	 * @since Greenshift 0.8.0
	 *
	 * @param array[] $block_pattern_categories {
	 *     An associative array of block pattern categories, keyed by category name.
	 *
	 *     @type array[] $properties {
	 *         An array of block category properties.
	 *
	 *         @type string $label A human-readable label for the pattern category.
	 *     }
	 * }
	 */
	$block_pattern_categories = apply_filters( 'greenshift_block_pattern_categories', $block_pattern_categories );

	foreach ( $block_pattern_categories as $name => $properties ) {
		// phpcs:ignore WPThemeReview.PluginTerritory.ForbiddenFunctions.editor_blocks_register_block_pattern_category
		register_block_pattern_category( $name, $properties );
	}

}
add_action( 'init', 'greenshift_register_block_patterns', 9 );
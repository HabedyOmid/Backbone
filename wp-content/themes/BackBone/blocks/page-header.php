<?php $block_id = $block['id']; ?>

<section class="bg-img bg-img-top" id="custom-<?php echo $block_id; ?>" <?php if( strtolower(get_field('background_type')) == 'color' && get_field('background_color') ) : echo 'style="background-color:' . get_field('background_color') . ';"'; endif; ?>>
  <div class="container py-6 py-md-12 py-lg-15">
    <div class="row">
      <div class="col-md-6 jsutify-content-start justify-content-md-center">
        <div class="wysiwyg">
          <?php echo get_field('content_editor'); ?>
        </div>
      </div>
    </div>
  </div>
</section>

<?php // Responsive background image
if( strtolower(get_field('background_type')) == 'image' && get_field('background_image') ) : ?>
  <style>
    @media screen and (min-width: 1200px) {
      #custom-<?php echo $block_id; ?>{ 
        background-position: top center;
        background-image: url('<?php echo get_image_src(get_field('background_image'), 'lg'); ?>'); 
      }
    }
    @media screen and (max-width: 1200px) {
      #custom-<?php echo $block_id; ?>{ 
        background-position: top center;
        background-image: url('<?php echo get_image_src(get_field('background_image'), 'lg'); ?>'); 
      }
    }
    @media screen and (max-width: 768px) {
      #custom-<?php echo $block_id; ?>{ 
        background-image: url('<?php echo get_image_src(get_field('background_image'), 'md'); ?>'); 
      }
    }
  </style>
<?php endif; ?>


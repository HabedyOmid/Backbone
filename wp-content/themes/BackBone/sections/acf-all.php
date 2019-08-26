<?php if(have_rows('sections')) : while(have_rows('sections')) : the_row();

    if( get_row_layout() == 'wysiwyg' && get_sub_field('visibility') == TRUE ) : // wysiwyg 
        get_template_part("sections/acf", "wysiwyg");

     endif; //END of all ACFs Sections 
endwhile; endif; ?>

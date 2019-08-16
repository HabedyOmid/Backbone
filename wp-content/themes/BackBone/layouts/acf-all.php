<?php if(have_rows('sections')) : while(have_rows('sections')) : the_row();

    if( get_row_layout() == 'page_header' && get_sub_field('visibility') == TRUE ) : // Page Header 
        get_template_part("layouts/acf", "header");




     endif; //END of all ACFs Sections 
endwhile; endif; ?>

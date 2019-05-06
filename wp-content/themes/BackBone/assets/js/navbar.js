$(document).ready(function(){
    // Check if a dropdown has another dropdown
    $( "#menu-primary > li ul" ).each(function( index ) {
        $( this ).has( "ul" ).addClass('parent__dropdown');
    });


    // Check if <li> has .active class then added to parent <li> for styling
    $( "#menu-primary li ul li" ).each(function( index ) {
        if($(this).hasClass("active")){
            // add .active to parent <li>
            $(this).parents('ul li').addClass('active');
            // add .active children <a>
            $(this).children('a').addClass('active');
        }
    });

    $(".navbar__toggler").click(function() {
        $('#menu-primary').toggleClass('show')
    })
});

// Smooth Scrolling
$(document).ready(function(){
    $("a").on('click', function(event) {

      if (this.hash !== "") {
          event.preventDefault();

          var hash = this.hash;

          $('html, body').animate({
            scrollTop: $(hash).offset().top
          }, 700, function(){
            window.location.hash = hash;
          });
        }
    });
});

// tgl checkbox for navbar collapse
$('#tgl-checkbox:checkbox').change(function(){
    if($(this).is(":checked")) {
        $('.navbar-item.links').addClass("show");
    } else {
        $('.navbar-item.links').removeClass("show");
    }
});

// dropdown menu toggle in medium screen size
$('.dropdown .nav-link').click(function(){
    $(this).parent().toggleClass('open');
});



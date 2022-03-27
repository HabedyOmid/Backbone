jQuery(document).ready(function () {
  // Navbar Toggle
  jQuery(".navbar__toggler").click(function () {
    jQuery(this).toggleClass("collapsed");
    jQuery("Z").toggleClass("no-scroll");
    jQuery(".navbar-content").removeAttr("id").toggleClass("show");
    jQuery(".navbar-collapse").removeAttr("id");
  });
});

// Add PLUS (+) icon on mobile screen toggles the menu dropdowns
jQuery(function ($) {
  $(".menu-item-has-children > a").each(function (index, value) {
    jQuery(this)
      .addClass("dropdown-toggle")
      .removeAttr("data-toggle")
      .removeAttr("aria-haspopup")
      .removeAttr("aria-expanded")
      .removeAttr("id")
      .after('<a href="#" class="toggle-icon"></a>');
  });

  // Add class .dropdown_toggled to <ul> tag on + link
  $(".toggle-icon").on("click", function (e) {
    jQuery(this).siblings("ul.dropdown-menu").toggleClass("dropdown_toggled");
    $(this)
      .toggleClass("toggled")
      .parent()
      .siblings()
      .children()
      .removeClass("dropdown_toggled");
    $(this)
      .toggleClass("toggled")
      .parent()
      .siblings()
      .children()
      .removeClass("toggled");
    $(this).toggleClass("toggled");
  });
  // }
});

// Toggle navbar for mobile
$(".navbar-toggler").on("click", function (e) {
  $("body").toggleClass("no-scroll");
  e.preventDefault();
});
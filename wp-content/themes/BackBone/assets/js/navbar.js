// tgl checkbox for navbar collapse
$('#tgl-checkbox:checkbox').change(function() {
	$(this).hide();
	if ($(this).is(':checked')) {
		$('.navbar-item.links').addClass('show');
	} else {
		$('.navbar-item.links').removeClass('show');
	}
});

// Hide & Show navbar on scroll
$(document).ready(function() {
	'use strict';
	var c,
		currentScrollTop = 0,
		navbar = $('.hideShowOnScroll');

	$(window).scroll(function() {
		console.log('working');

		var a = $(window).scrollTop();
		var b = navbar.height();

		currentScrollTop = a;

		if (c < currentScrollTop && a > b + b) {
			navbar.addClass('scrollUp');
		} else if (c > currentScrollTop && !(a <= b)) {
			navbar.removeClass('scrollUp');
		}

		c = currentScrollTop;
	});
});

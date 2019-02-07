//
// Affex Navbar
+function ($) {
  'use strict';
  var Affix = function (element, options) {
    this.options = $.extend({}, Affix.DEFAULTS, options)

    this.$target = $(this.options.target)
      .on('scroll.bs.affix.data-api', $.proxy(this.checkPosition, this))
      .on('click.bs.affix.data-api',  $.proxy(this.checkPositionWithEventLoop, this))

    this.$element     = $(element)
    this.affixed      = null
    this.unpin        = null
    this.pinnedOffset = null

    this.checkPosition()
  }

  Affix.VERSION  = '3.3.6'

  Affix.RESET    = 'affix affix-top affix-bottom'

  Affix.DEFAULTS = {
    offset: 0,
    target: window
  }

  Affix.prototype.getState = function (scrollHeight, height, offsetTop, offsetBottom) {
    var scrollTop    = this.$target.scrollTop()
    var position     = this.$element.offset()
    var targetHeight = this.$target.height()

    if (offsetTop != null && this.affixed == 'top') return scrollTop < offsetTop ? 'top' : false

    if (this.affixed == 'bottom') {
      if (offsetTop != null) return (scrollTop + this.unpin <= position.top) ? false : 'bottom'
      return (scrollTop + targetHeight <= scrollHeight - offsetBottom) ? false : 'bottom'
    }

    var initializing   = this.affixed == null
    var colliderTop    = initializing ? scrollTop : position.top
    var colliderHeight = initializing ? targetHeight : height

    if (offsetTop != null && scrollTop <= offsetTop) return 'top'
    if (offsetBottom != null && (colliderTop + colliderHeight >= scrollHeight - offsetBottom)) return 'bottom'

    return false
  }

  Affix.prototype.getPinnedOffset = function () {
    if (this.pinnedOffset) return this.pinnedOffset
    this.$element.removeClass(Affix.RESET).addClass('affix')
    var scrollTop = this.$target.scrollTop()
    var position  = this.$element.offset()
    return (this.pinnedOffset = position.top - scrollTop)
  }

  Affix.prototype.checkPositionWithEventLoop = function () {
    setTimeout($.proxy(this.checkPosition, this), 1)
  }

  Affix.prototype.checkPosition = function () {
    if (!this.$element.is(':visible')) return

    var height       = this.$element.height()
    var offset       = this.options.offset
    var offsetTop    = offset.top
    var offsetBottom = offset.bottom
    var scrollHeight = Math.max($(document).height(), $(document.body).height())

    if (typeof offset != 'object')         offsetBottom = offsetTop = offset
    if (typeof offsetTop == 'function')    offsetTop    = offset.top(this.$element)
    if (typeof offsetBottom == 'function') offsetBottom = offset.bottom(this.$element)

    var affix = this.getState(scrollHeight, height, offsetTop, offsetBottom)

    if (this.affixed != affix) {
      if (this.unpin != null) this.$element.css('top', '')

      var affixType = 'affix' + (affix ? '-' + affix : '')
      var e         = $.Event(affixType + '.bs.affix')

      this.$element.trigger(e)

      if (e.isDefaultPrevented()) return

      this.affixed = affix
      this.unpin = affix == 'bottom' ? this.getPinnedOffset() : null

      this.$element
        .removeClass(Affix.RESET)
        .addClass(affixType)
        .trigger(affixType.replace('affix', 'affixed') + '.bs.affix')
    }

    if (affix == 'bottom') {
      this.$element.offset({
        top: scrollHeight - height - offsetBottom
      })
    }
  }

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.affix')
      var options = typeof option == 'object' && option

      if (!data) $this.data('bs.affix', (data = new Affix(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.affix
  $.fn.affix             = Plugin
  $.fn.affix.Constructor = Affix

  $.fn.affix.noConflict = function () {
    $.fn.affix = old
    return this
  }

  $(window).on('load', function () {
    $('[data-spy="affix"]').each(function () {
      var $spy = $(this)
      var data = $spy.data()

      data.offset = data.offset || {}

      if (data.offsetBottom != null) data.offset.bottom = data.offsetBottom
      if (data.offsetTop    != null) data.offset.top    = data.offsetTop

      Plugin.call($spy, data)
    })
  })
}(jQuery);


//
// If There is Affix Navbar / ADJUST MARGINS TOP
if ($('nav').attr('data-spy') == 'affix') {
    var navHeight = $('nav').outerHeight();

    // If there is Header Element 
    if($('header')[0]){
        $('header').css('marginTop', navHeight);
    }else if($('#page__content')[0]){
        $('#page__content').css('marginTop', navHeight+30);
    }
}


//
// dropdown menu toggle in medium screen size
$('.dropdown .nav-link').click(function(){
    $(this).parent().toggleClass('open');
});


// 
// Add a class for navbar Dropdown for visibility issues
$('a.dropdown-toggle').mouseover(function(){
    $(this).next().addClass('imVisibleNow');
});


//
// Navbar Toggle
$('.navbar-toggle').click(function(){
    $(this).toggleClass('toggled')
    $('.primary-navbar').toggleClass('toggled');
});
 

//
// Navbar tgl checkbox for navbar collapse 
$('#tgl-checkbox:checkbox').change(function(){
    if($(this).is(":checked")) {
        $('.navbar-item.links').addClass("show");
    } else {
        $('.navbar-item.links').removeClass("show");
    }
});




//
// Homepage Header Slider
$('.owl-carousel.homepage__slider').owlCarousel({
    loop: true,
    margin: 0,
    items: 1,
    autoplay: true,
    autoplayTimeout: 5000,
    dots: true,
    rewind: true,
    autoplayHoverPause: true,
});


//
// Copy Owl Carousel Slider
$('.owl-carousel.copy__owl__slider').owlCarousel({
    //loop: true,
    loop: false,
    margin: 0,
    items: 1,
    autoplay: false,
    autoplayTimeout: 5000,
    dots: false,
    rewind: false,
    nav: false,
    dots: false,
   //nav: true,
    autoplayHoverPause: false,
});


// Testimonial Slider
$('.owl-carousel.testimonial__carousel').owlCarousel({
    loop: true,
    margin: 0,
    items: 3,
    autoplay: true,
    autoplayTimeout: 5000,
    dots: true,
    rewind: true,
    autoplayHoverPause: true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:2,
            nav:false
        },
        1000:{
            items:3,
            nav:true,
            loop:false
        }
    }
});



// Detect Location Accordion for MAP
jQuery('.accordion .card').each(function() {
  var dataLocationId = jQuery(this).attr("data-location-id")
  jQuery(this).click(function() {
  google.maps.event.trigger(allMyMarkers[dataLocationId], 'click');
  });
});


jQuery('.accordion .card').each(function() {


}



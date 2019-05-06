!function(h){"use strict";var l=function(t,i){this.options=h.extend({},l.DEFAULTS,i),this.$target=h(this.options.target).on("scroll.bs.affix.data-api",h.proxy(this.checkPosition,this)).on("click.bs.affix.data-api",h.proxy(this.checkPositionWithEventLoop,this)),this.$element=h(t),this.affixed=null,this.unpin=null,this.pinnedOffset=null,this.checkPosition()};function e(o){return this.each(function(){var t=h(this),i=t.data("bs.affix"),e="object"==typeof o&&o;i||t.data("bs.affix",i=new l(this,e)),"string"==typeof o&&i[o]()})}l.VERSION="3.3.6",l.RESET="affix affix-top affix-bottom",l.DEFAULTS={offset:0,target:window},l.prototype.getState=function(t,i,e,o){var n=this.$target.scrollTop(),f=this.$element.offset(),s=this.$target.height();if(null!=e&&"top"==this.affixed)return n<e&&"top";if("bottom"==this.affixed)return null!=e?!(n+this.unpin<=f.top)&&"bottom":!(n+s<=t-o)&&"bottom";var a=null==this.affixed,h=a?n:f.top;return null!=e&&n<=e?"top":null!=o&&t-o<=h+(a?s:i)&&"bottom"},l.prototype.getPinnedOffset=function(){if(this.pinnedOffset)return this.pinnedOffset;this.$element.removeClass(l.RESET).addClass("affix");var t=this.$target.scrollTop(),i=this.$element.offset();return this.pinnedOffset=i.top-t},l.prototype.checkPositionWithEventLoop=function(){setTimeout(h.proxy(this.checkPosition,this),1)},l.prototype.checkPosition=function(){if(this.$element.is(":visible")){var t=this.$element.height(),i=this.options.offset,e=i.top,o=i.bottom,n=Math.max(h(document).height(),h(document.body).height());"object"!=typeof i&&(o=e=i),"function"==typeof e&&(e=i.top(this.$element)),"function"==typeof o&&(o=i.bottom(this.$element));var f=this.getState(n,t,e,o);if(this.affixed!=f){null!=this.unpin&&this.$element.css("top","");var s="affix"+(f?"-"+f:""),a=h.Event(s+".bs.affix");if(this.$element.trigger(a),a.isDefaultPrevented())return;this.affixed=f,this.unpin="bottom"==f?this.getPinnedOffset():null,this.$element.removeClass(l.RESET).addClass(s).trigger(s.replace("affix","affixed")+".bs.affix")}"bottom"==f&&this.$element.offset({top:n-t-o})}};var t=h.fn.affix;h.fn.affix=e,h.fn.affix.Constructor=l,h.fn.affix.noConflict=function(){return h.fn.affix=t,this},h(window).on("load",function(){h('[data-spy="affix"]').each(function(){var t=h(this),i=t.data();i.offset=i.offset||{},null!=i.offsetBottom&&(i.offset.bottom=i.offsetBottom),null!=i.offsetTop&&(i.offset.top=i.offsetTop),e.call(t,i)})})}(jQuery),$(document).ready(function(){$("a").on("click",function(t){if(""!==this.hash){t.preventDefault();var i=this.hash;$("html, body").animate({scrollTop:$(i).offset().top},700,function(){window.location.hash=i})}})}),$("#tgl-checkbox:checkbox").change(function(){$(this).is(":checked")?$(".navbar-item.links").addClass("show"):$(".navbar-item.links").removeClass("show")}),$(".dropdown .nav-link").click(function(){$(this).parent().toggleClass("open")});
$(document).ready(function(){$("#menu-primary > li ul").each(function(a){$(this).has("ul").addClass("parent__dropdown")}),$("#menu-primary li ul li").each(function(a){$(this).hasClass("active")&&($(this).parents("ul li").addClass("active"),$(this).children("a").addClass("active"))}),$(".navbar__toggler").click(function(){$("#menu-primary").toggleClass("show")})});
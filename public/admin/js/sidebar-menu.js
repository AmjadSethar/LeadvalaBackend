
$.sidebarMenu = function(menu) {
  var animationSpeed = 300,
      subMenuSelector = '.sidebar-submenu';
  $(menu).on('click', 'li a', function(e) {
    var $this = $(this);
    var checkElement = $this.next();
    if (checkElement.is(subMenuSelector) && checkElement.is(':visible')) {
      checkElement.slideUp(animationSpeed, function() {
        checkElement.removeClass('menu-open');
      });
      checkElement.parent("li").removeClass("active");
    }
    else if ((checkElement.is(subMenuSelector)) && (!checkElement.is(':visible'))) {
      var parent = $this.parents('ul').first();
      var ul = parent.find('ul:visible').slideUp(animationSpeed);
      ul.removeClass('menu-open');
      var parent_li = $this.parent("li");
      checkElement.slideDown(animationSpeed, function() {
        checkElement.addClass('menu-open');
        parent.find('li.active').removeClass('active');
        parent_li.addClass('active');
      });
    }
    if (checkElement.is(subMenuSelector)) {
      e.preventDefault();
    }
  });
}
$.sidebarMenu($('.sidebar-menu'))
$nav = $('.page-sidebar');
$header = $('.page-main-header');
$close_sidebar = $('#close-sidebar');
$toggle_nav_top = $('#sidebar-toggle');
$toggle_nav_top.click(function() {
  $this = $(this);
  $nav = $('.page-sidebar');
  $nav.toggleClass('open');
  $header.toggleClass('open');

});
$close_sidebar.click(function() {
  $this = $(this);
  $nav = $('.page-sidebar');
  $nav.addClass('open');
  $header.addClass('open');

});

$body_part_side = $('.body-part');
$body_part_side.click(function(){
  $nav.addClass('open');
  $header.addClass('open');
});

//    responsive sidebar
var $window = $(window);
var widthwindow = $window.width();

(function($) {
  "use strict";
  if(widthwindow <= 991) {
    $nav.addClass("open");
    $header.addClass('open');
    
  }
})(jQuery);


var current = window.location.pathname
$(".sidebar-menu>li a").filter(function() {

  var link = $(this).attr("href");
  if(link){
    if (current.indexOf(link) != -1) {
      $(this).parents('li').addClass('active');
      $(this).addClass('active');
      console.log(link + " found");
    }
  }
});
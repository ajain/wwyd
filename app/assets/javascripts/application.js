// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


$(function($) {
  function changeAboutTab(e) {
    e.preventDefault();
    $("ul#sub-nav>li>a.active").removeClass("active");
    $(this).addClass("active");
    showAboutTab($(this).attr("href"));
    $('.content').css("background-image", 'url(../assets/test.jpg)', 5000);

  }

  function showAboutTab(activeDiv) {
  	$("#intro-banner").hide();
    $(".reasons>div").hide();
    $(activeDiv).show("slow");
  }

  $("ul#sub-nav>li>a").click(changeAboutTab);


});

$(function($) {
    $(".reasons>div").hide();
})
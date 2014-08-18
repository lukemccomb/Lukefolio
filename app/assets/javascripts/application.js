// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
//signature hello world
  console.log('Smells like updog in here');
//Declaring global var
  var items = 0;
//login form
  $(document).on("click", ".login", function() {
    $('.reg_form').removeClass('reg_form_view');
    $('.login_form').toggleClass('login_form_view');
    items = 0;
  });
  //register form
  $(document).on("click", ".reg", function() {
    $('.login_form').removeClass('login_form_view');
    $('.reg_form').toggleClass('reg_form_view');
    items = 0;
  });
  //nav menu
  $(document).on("click", ".menu_logo", function() {
    $('.about').removeClass('about_view');
    $('.nav_menu').toggleClass('nav_menu_view');
    items = 0;
  });
  //about question mark
  $(document).on("click", ".question_logo", function() {
    $('.nav_menu').removeClass('nav_menu_view');
    $('.about').toggleClass('about_view');
    items = 0;
  });
});

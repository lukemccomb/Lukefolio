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
    $('.nav_menu').toggleClass('nav_menu_view');
    items = 0;
  });
  //social
  $(document).on("mouseover", "#footer-cue", function() {
    $('.footer').show('footer');
    $('#footer-cue').hide();
  });
  $(document).on("mouseout", ".footer", function() {
    $('.footer').hide('.footer');
    $('#footer-cue').show();
  });
  $(document).on("mouseover", "#color-magic", function() {
    $("#color-magic").addClass('crazy-shadow');
  });
  $(document).on("mouseout", "#color-magic", function() {
    $("#color-magic").removeClass('crazy-shadow');
  });
});

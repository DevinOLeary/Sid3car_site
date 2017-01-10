// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });



//at screen width, menu changes to hamburger menu
function mobileViewUpdate() {

  if ($(window).width() < 700) {
    $("#desktopMenu").addClass('hide');
    $("#hamburger").removeClass('hide');
  } else {
    $("#desktopMenu").removeClass('hide');
    $("#hamburger").addClass('hide');
    $("#mobileMenu").addClass('hide');
  }
}
$(window).on('load', mobileViewUpdate());
$(window).resize(mobileViewUpdate);


 //on hamburger click, menu opens
$(function() {
  $("#hamburger").on('click', function() {
    $("#mobileMenu").removeClass('hide');
  });
});
 //on exit click, menu closes
$(function() {
  $("#exit").on('click', function() {
    $("#mobileMenu").addClass('hide');
  });
});

//exit bio when X is clicked
$(function() {
  $("#bio-exit").on('click', function() {
    $(".bio-container").hide()
    $(".hover-preview").show();
  });
});

//on click, open bio container
$(function() {
  $(".bio-container").hide();
  $(".profile-pic").on('click', function() {
    $(".hover-preview").show();
    $(".bio-container").hide();
    $(".profile-pic").removeClass('primary-profile');
    $(this).addClass('primary-profile');
    $(this).find(".bio-container").show();
    $(this).find(".hover-preview").hide();
  });
});

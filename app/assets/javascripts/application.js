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
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

$('.hero-container .success').on('click', function(e){
  e.preventDefault();
  $('html, body').animate({
    scrollTop: $('.hero-explain').offset().top
  }, 2000);
});

$('.scroll-to-top').on('click', function(e){
  e.preventDefault();
  $('html, body').animate({
    scrollTop: $('#topnavwrapper').offset().top

  }, 1000);
});

var isUploadClicked = false;

$('.upload-trigger, .upload-notice').on('click', function(e){
  e.preventDefault();
  var $body = $('body');
  if( $body.hasClass('upload-ready') && isUploadClicked != false ){
    $('.upload-trigger').removeClass('active');
    $body.removeClass('upload-ready');
    isUploadClicked = false;
  } else {
    $('.upload-trigger').addClass('active');
    $body.addClass('upload-ready');
    isUploadClicked = true;
  }
});

makeItBounce('.upload-notice');

function makeItBounce(bounceTarget){
  $(bounceTarget).on('mouseenter', function(){
    $('.upload-slot').removeClass('appear-bounce');
    setTimeout(function(){
      $('.upload-slot').addClass('appear-bounce');
    }, 50);
  });
  $(bounceTarget).on('mouseleave', function(e){
    $('.upload-slot').removeClass('appear-bounce');
  });
}

$('.upload-wrapper a').on('click', function(e){
  e.preventDefault();
});

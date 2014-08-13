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

setTimeout(function(){
  $('.home-hero-wrap').addClass('appear');
  setTimeout(function(){
    $('.home-hero-wrap').addClass('appear-map');
    setTimeout(function(){
      $('.home-hero-wrap').addClass('appear-loc');
      setTimeout(function(){
      setTimeout(function(){
        $('.home-hero-wrap').addClass('appear-timeline');
        setTimeout(function(){
          $(".number-start-year").animateNumbers(2000, true, 1500);
          $(".number-end-year").animateNumbers(2008, true, 1500);
        }, 500)
        setTimeout(function(){
          $('.home-hero-wrap').addClass('appear-settime');
          setTimeout(function(){
            $('.home-hero-wrap').addClass('appear-final');
          }, 2000)
        }, 2000)
      }, 2000)
      }, 1000)
    }, 2000)
  }, 2000)
}, 2000)

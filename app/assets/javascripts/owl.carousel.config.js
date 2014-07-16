$(document).ready(function(){
  if( $('.owl-carousel').length > 0){
    $('.owl-carousel').owlCarousel({
      items : 4,
  })
  }
  if( $('.owl-carousel-profile').length > 0){
    $('.owl-carousel-profile').owlCarousel({
      items : 1,
      loop:true,
      nav: true
  })
  }
})


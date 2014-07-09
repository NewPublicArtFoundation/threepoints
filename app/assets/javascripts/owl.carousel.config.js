(function(){
  if( $('.owl-carousel').length > 0){
    var lazyLoadConfig = {
      items : 4,
      lazyLoad : true,
      navigation : true
    }
    $('.owl-carousel').owlCarousel( lazyLoadConfig )
  }
})

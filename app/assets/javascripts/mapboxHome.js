var mapConfig = {
  zoomControl: false
}

L.mapbox.accessToken = 'pk.eyJ1IjoibGtiZ2lmdCIsImEiOiJyTERaTml3In0.y2wd_Fi58ux53Wm1Ur1qCg';
  var map = L.mapbox.map('map', 'examples.map-i86nkdio', mapConfig)
    .setView([geoJSON[0].geometry.coordinates[1], geoJSON[0].geometry.coordinates[0]], 12)
    .featureLayer.setGeoJSON(geoJSON);

    map.dragging.disable();
    map.touchZoom.disable();
    map.doubleClickZoom.disable();
    map.scrollWheelZoom.disable();

  // var markerList = document.getElementById('marker-list');
  // map.featureLayer.on('ready', function(e) {
  //     map.featureLayer.eachLayer(function(layer) {
  //         var item = markerList.appendChild(document.createElement('li'));
  //         item.innerHTML = layer.toGeoJSON().properties.title;
  //         item.onclick = function() {
  //            map.setView(layer.getLatLng(), 14);
  //            layer.openPopup();
  //         };
  //     });
  // });


  // for( var i = 0; i < geoJSON.length; i++ ){
  //   var lon = geoJSON[i].geometry.coordinates[0],
  //       lat  = geoJSON[i].geometry.coordinates[1];
  // }


$(window).scroll(function(){
  var isMapTop = $(window).scrollTop() >= $('#map').offset().top - 25  && $('#map').offset().top + 25 >= $(window).scrollTop();
  var isMapBottom = $(window).scrollTop() <= $('#map').offset().top + $('#map').height();
  if(isMapTop){
    $('body').addClass('map-inview');
  } else {
    $('body').removeClass('map-inview');
  }
});

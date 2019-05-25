// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function initMap (lat, lng){
  var myCoords = new google.maps.LatLng(lat, lng);

  var mapOptions = {
    center: myCoords,
    zoom: 14
  };

  var map = new google.maps.Map(document.getElementById('map'), mapOptions);

  var marker = new google.maps.Marker
  ({position: myCoords,
    map: map
  });
}

function initMap2() {

  var lat = document.getElementById('location_latitude').value;
  var lng = document.getElementById('location_longitude').value;

  if (!lat || !lng) {
    lat = 51.5;
    lng = -0,124;
    document.getElementById('location_latitude').value = lat;
    document.getElementById('location_longitude').value = lng;

  }

  var myCoords = new google.maps.LatLng(lat, lng);

  var mapOptions = {
    center: myCoords,
    zoom:14
  };

  var map = new google.maps.Map(document.getElementById('map2'), mapOptions);

  var marker = new google.maps.Marker
  ({position: myCoords,
    animation: google.maps.Animation.DROP,
    map: map,
    draggable: true
  });


    function refreshMarker() {
      var lat = document.getElementById('location_latitude').value;
      var lng = document.getElementById('location_longitude').value;
      var myCoords = new google.maps.LatLng(lat, lng);
      marker.setPosition(myCoords);
      map.setCenter(marker.getPosition());
    }

    document.getElementById('location_latitude').onchange = refreshMarker;
    document.getElementById('location_longitude').onchange = refreshMarker;

    marker.addListener('drag', function(){
      latlng = marker.getPosition();
      newlat = (Math.round(latlng.lat()*1000000))/1000000;
      newlng = (Math.round(latlng.lng()*1000000))/1000000;
      document.getElementById('location_latitude').value = newlat;
      document.getElementById('location_longitude').value = newlng;
    });

    marker.addListener('dragged', function(){
      map.panTo(marker.getPosition())
    })
}


$(function() {
  "use strict";
  var geocoder;
  var mymap;
 
  function initMap()
  {
    geocoder = new google.maps.Geocoder();
    mymap = new google.maps.Map(document.getElementById('mymap'),
    {
      center: {lat: 49.277924, lng: -123.117307},
      zoom: 13,
      streetViewControl: true,  
    });
  }

  var infowindow = new google.maps.InfoWindow();

  function codeAddress()
  {  
    var image = "http://i.stack.imgur.com/cdiAE.png";
    var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var labelIndex = 0;
    var address = document.getElementById("address").value;
    geocoder.geocode({ address: address},
      function(results, status)
      {
        if (status === google.maps.GeocoderStatus.OK)
        { 
          mymap.setCenter(results[0].geometry.location);
          new google.maps.Marker({
            map: mymap,
            position: results[0].geometry.location,
            label: labels[labelIndex++ % labels.length],
            draggable: true
          });
        }
        else
        {
          console.error("Geocode was not successful for the following reason: ", status);
        }
      });
  }




  initMap();
  codeAddress();
});
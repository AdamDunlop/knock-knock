$(document).ready(function() {
  var mymap;
  var image = "http://i.stack.imgur.com/cdiAE.png";
  var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var labelIndex = 0;

  // var mapCanvas = document.getElementById('mymap');

  function initMap() {
    mymap = new google.maps.Map(document.getElementById('mymap'), {
      center: {lat: 49.277924, lng: -123.117307},
      zoom: 13,
      streetViewControl: true  

    });

    var marker = new google.maps.Marker({
     position: {lat: 49.259630, lng: -123.115102},
     map: mymap,
     label: labels[labelIndex++ % labels.length],

    });
  
     var marker = new google.maps.Marker({
     position: {lat: 49.280974, lng: -123.127125},
     map: mymap,
     label: labels[labelIndex++ % labels.length],

    });


     var marker = new google.maps.Marker({
     position: {lat: 49.280442, lng: -123.121061},
     map: mymap,
     icon: image,

    }); 

     var marker = new google.maps.Marker({
     position: {lat: 49.277924, lng: -123.117307},
     map: mymap,
     icon: image
    });
  }
  initMap();

})

function initMap() {

// Generate Map and Related CSS
let map = new google.maps.Map(document.getElementById('map'), {
  center: {lat: 48.866667, lng: 2.333333},
  zoom: 9,
  disableDefaultUI: true,
  styles: [
	{
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#f5f5f5"
		}
	  ]
	},
	{
	  "elementType": "labels.icon",
	  "stylers": [
		{
		  "visibility": "off"
		}
	  ]
	},
	{
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#616161"
		}
	  ]
	},
	{
	  "elementType": "labels.text.stroke",
	  "stylers": [
		{
		  "color": "#f5f5f5"
		}
	  ]
	},
	{
	  "featureType": "administrative.land_parcel",
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#bdbdbd"
		}
	  ]
	},
	{
	  "featureType": "poi",
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#eeeeee"
		}
	  ]
	},
	{
	  "featureType": "poi",
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#757575"
		}
	  ]
	},
	{
	  "featureType": "poi.park",
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#e5e5e5"
		}
	  ]
	},
	{
	  "featureType": "poi.park",
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#9e9e9e"
		}
	  ]
	},
	{
	  "featureType": "road",
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#ffffff"
		}
	  ]
	},
	{
	  "featureType": "road.arterial",
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#757575"
		}
	  ]
	},
	{
	  "featureType": "road.highway",
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#dadada"
		}
	  ]
	},
	{
	  "featureType": "road.highway",
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#616161"
		}
	  ]
	},
	{
	  "featureType": "road.local",
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#9e9e9e"
		}
	  ]
	},
	{
	  "featureType": "transit.line",
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#e5e5e5"
		}
	  ]
	},
	{
	  "featureType": "transit.station",
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#eeeeee"
		}
	  ]
	},
	{
	  "featureType": "water",
	  "elementType": "geometry",
	  "stylers": [
		{
		  "color": "#c9c9c9"
		}
	  ]
	},
	{
	  "featureType": "water",
	  "elementType": "labels.text.fill",
	  "stylers": [
		{
		  "color": "#9e9e9e"
		}
	  ]
	}
  ]
});

// Custom pin
//var pin = 
  
//Configure InfoWindow
let infowindow = new google.maps.InfoWindow({
content: ""
});

for(let i = 0; i < gon.golfs.length; i++){

 // Current marker
 let marker = new google.maps.Marker({
	position: new google.maps.LatLng(gon.golfs[i].lat,gon.golfs[i].long),
	map: map
  });

  //Golf name
  let golf = gon.golfs[i].name
  let golflink = golf.link("https://www.google.fr")

  console.log(golflink)
  
  // Open InfoWindow on click
  google.maps.event.addListener(marker, 'click', function() {
	infowindow.setContent(golflink);
	infowindow.open(map, marker);
  });
 }
}


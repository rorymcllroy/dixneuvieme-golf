/*document.onreadystatechange = setTimeout(function () {
    if (document.readyState === 'complete') {
        if(confirm('Hey le site xxxvidsxxx est trop bien. Viens dessus stp please \nCa t\'intéresse?')) {
        window.open('https://www.youtube.com/watch?v=dQw4w9WgXcQ');	
        }
    }
},5000);*/

var crd; 
var posLat;	
var posLng;
function success(pos) {
	this.crd = pos.coords;
	console.log('Votre position actuelle est :');
	console.log('Latitude : ' + this.crd.latitude);
	console.log('Longitude : ' + this.crd.longitude);
	console.log('La précision est de ' + this.crd.accuracy +  'mètres.');
	return this.crd;
}

document.onreadystatechange = setTimeout(function () {
    if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(success);
    } else {
        alert("You don't support this");
    }
},100);

document.onreadystatechange = setTimeout(function myMap() {

posLat = crd.latitude;
posLng = crd.longitude;

// Map options
var mapProp= {
	center:{lat:posLat,lng:posLng},
    //center:{lat:48.866667,lng:2.333333},
    zoom:15,
};

// New map
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

// Add marker
var marker= new google.maps.Marker({
	position: {lat:48.875661,lng:2.485932},	
	map: map,
});

},3000);



/*		var crd; 
		var posLat;	
		var posLng;
		function success(pos) {
  			this.crd = pos.coords;
			console.log('Votre position actuelle est :');
			console.log(`Latitude : ${crd.latitude}`);
			console.log(`Longitude : ${crd.longitude}`);
			console.log(`La précision est de ${crd.accuracy} mètres.`);
			return this.crd;
		}
		navigator.geolocation.getCurrentPosition(success);
		posLat = crd.latitude;
		posLng = crd.longitude;
		alert (posLat + ' ' + posLng);
/*var crd; 
var posLat;
var posLng;
function success(pos) {
  this.crd = pos.coords;
  console.log('Votre position actuelle est :');
  console.log(`Latitude : ${crd.latitude}`);
  console.log(`Longitude : ${crd.longitude}`);
  console.log(`La précision est de ${crd.accuracy} mètres.`);
  return this.crd
}
navigator.geolocation.getCurrentPosition(success);
posLat = crd.latitude;
posLng = crd.longitude;
alert (posLat + ' ' + posLng);
*/
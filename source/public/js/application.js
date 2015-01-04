$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

function initialize(){
  var mapProp = {
    center:new google.maps.LatLng(39.50, -98.35),
    zoom: 4,
    mapTypeId: google.maps.MapTypeId.ROADMAP
};
  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
}


function toggleLoginForm(x) {
  var panel = document.getElementById(x)
  var maxH ='100px';
  if(panel.style.height == maxH) {
    panel.style.height = '0px';
    panel.style.border = '0px';

  } else {
    panel.style.height = maxH;
    panel.style.border = '2px solid black';
  }
}

google.maps.event.addDomListener(window, 'load', initialize);

document.getElementById('login-button').addEventListener('click', function(){toggleLoginForm('login_panel')});


});
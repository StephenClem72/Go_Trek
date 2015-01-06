$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

// function initialize(){
//   var mapProp = {
//     center:new google.maps.LatLng(39.50, -98.35),
//     zoom: 4,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
// };
//   var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
// }

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

// $(function(){
//   $('#search').on('click', function(event){
//     get_trails();
//   });

//   function get_trails (){
//    location_value = $('#search_results').val();
//    place_array = [];
//    $('#trail_api_result').html("<h4>Loading results...</h4>");
//    $('#search_title').html('<h2>Outdoor Activities Near ' + location_value + '</h2><ul>');
//    // $.getJSON explanation
//    // visit a route
//    // that route passes back JSON (assuming I'm authorized)
//    // NOW, pass that JSON as 'data' to another function

//    // HTTParty explanation
//    // visit a route
//    // that route passes back JSON (assuming I'm authorized)
//    // that's it
//    // THAT MEANS, I can set that JSON as a variable
//    // THAT MEANS, I can parse that JSON and save it to my database
//    // THAT MEANS, I can send that JSON to a page
//    $.getJSON('https://outdoor-data-api.herokuapp.com/api.json?api_key=4016165acc967a9800153c77a3528d83&q[city_cont]='+location_value+'&radius=15&callback=?', function(data) {
//     $('#trail_api_result').empty();
//     $.each(data.places, function() {
//       place = this;
//       activity_links = [];
//       $.each(place.activities, function(){
//         activity = this;
//         activity_links.push(activity.activity_type_name+"</a>");
//       });
//       if (activity_links.length > 0){$('#trail_api_result').append("<div class='trail_info'><li class='trail'><div class='trail_name'>"+place.name + "</div><div class='trail_location'>" + place.city + ', '+ place.state +"</div>" + "<div class='trail_activity'>["+activity_links.join(", ")+"]</div> </li></div>");}
//     });
//   });
//  }
// });


document.getElementById('login-button').addEventListener('click', function(){toggleLoginForm('login_panel')});

// google.maps.event.addDomListener(window, 'load', initialize);

});
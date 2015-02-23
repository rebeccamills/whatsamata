// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var apikey = "kfgpmgvfgacx98de9q3xazww";
var baseUrl = "https://api.wmata.com";
var form = $('#search');
var query = $('#search-name');
var result = $("#results");

form.on("submit", search);


function search(e){
  e.preventDefault();

  var busroutesSearchUrl = baseUrl + '/api.wmata.com/Bus.svc/json/jRoutes?api_key=' + apikey + '&page_limit=100';

  $.ajax({
    url: busroutesSearchUrl,
    dataType: "jsonp",
    success: function(parsed_json){
      var busroute = parsed_json["Routes"]["Name"]
      var routeID = parsed_json["Routes"]["RouteID"]
      console.log(busroute, routeID);

    }
  });
}



//  $(".submit_buttons").on("submit",function(event){
//   event.preventDefault();
//   busroute_id = this.firstChild.getAttribute("id");
//   console.log(busroute_id);
 

//   $.ajax({
//     type: "POST",
//     url: "/routes/",
//     data: {busroute_id: busroute_id}
    
//   });

// });

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


var apikey = "91caca06ccb34f2eb2aa7451ed608288";
var baseUrl = "https://api.wmata.com";
var form = $('#search');
var query = $('#search-name');
var result = $("#results");

// form.on("submit", search);


function search(){
  // e.preventDefault();

  var busroutesSearchUrl = baseUrl + '/Bus.svc/json/jRoutes?api_key=' + apikey + '&page_limit=100';

  $.ajax({
    url: busroutesSearchUrl,
    dataType: "jsonp",
    success: function(parsed_json){ 
        var obj = parsed_json.Routes
        for (var i=0; i < obj.length; i++){
          // console.log(obj[i]["Name"])
          var result = (obj[i]["Name"])
          // console.log(routes)
          $("#busdropdown").append("<option>" + obj[i]["Name"] + "</option>")
          // console.log(obj[i]["RouteID"])
        }
      // console.log(parsed_json.Routes);
      var test = parsed_json.Routes;
      // console.log(test[0]["Name"]);

    }
  });

  // $("favoritesbutton").on('click', function )

}

search();







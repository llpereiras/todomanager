// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require moment
//= require faye
//= require_tree .

$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
  faye.subscribe("/messages/new", function(data) {
    eval(data);
  });
});


// (function() {
//   $(document).ready(function() {
//     var client;
//     client = new Faye.Client('/faye');
//     return client.subscribe('/news', function(payload) {
//       var time;
//       time = moment(payload.created_at).format('D/M/YYYY H:mm:ss');
//       $('.count-message').html("" + payload.message);
//       return window.client = client;
//     });
//   });
//
// }).call(this);


// $(document).ready ->
//   client = new Faye.Client('/faye')
//   client.subscribe '/chat', (payload)->
//     time = moment(payload.created_at).format('D/M/YYYY H:mm:ss')
//     # You probably want to think seriously about XSS here:
//     $('.count-message').html("#{payload.message}")
//     window.client = client
//
// # in case anyone wants to play with the inspector.

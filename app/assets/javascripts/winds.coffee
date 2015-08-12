# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

success = (pos) ->
  coords = pos.coords
  console.log('Latitude : ' + coords.latitude)
  console.log('Longitude: ' + coords.longitude)
  console.log('More or less ' + coords.accuracy + ' meters.')

error = (err) ->
  console.log('Something fucked up: ' + err.code + ' - message: ' + err.message)

$ ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition(success, error)







# function getLocation() {
#     if (navigator.geolocation) {
#         navigator.geolocation.getCurrentPosition(showPosition);
#     } else {
#         x.innerHTML = "Geolocation is not supported by this browser.";
#     }
# }
# function showPosition(position) {
#     x.innerHTML = "Latitude: " + position.coords.latitude +
#     "<br>Longitude: " + position.coords.longitude;

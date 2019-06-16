# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.join_button').on  'ajax:success', (e, data, status, xhr) ->
    id = ($ e.target).attr 'id'
    console.log("sss")

    url_add_admin = "/joins/add_student/"
    $("##{id}").parent().parent().attr("class", "d-none")



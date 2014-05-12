window.Backy =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Backy.Routers.Articles()
    Backbone.history.start()

$(document).ready ->
  Backy.init()

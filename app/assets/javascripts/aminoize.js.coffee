window.Aminoize =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  				new Aminoize.Routers.Foods
  				Backbone.history.start()

$(document).ready ->
  Aminoize.initialize()

class Aminoize.Routers.Foods extends Backbone.Router
	routes:
		'': 'index'

	index: ->
		alert "home page"

	show: (id) ->
		alert "Food #{id}"

class FoodsController < ApplicationController

	def index
    @foods = Food.text_search(params[:query])
	end

end

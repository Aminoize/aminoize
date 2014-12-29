class FoodsController < ApplicationController

  def index
    if params[:search]
      @foods = Food.search(params[:search])
    else
      @foods = nil
    end
  end

end

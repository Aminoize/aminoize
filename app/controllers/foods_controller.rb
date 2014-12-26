class FoodsController < ApplicationController

  def index
    if params[:search]
      @food = Food.search(params[:search])
    else
      @food = nil
    end
  end

end

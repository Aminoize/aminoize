class FoodsController < ApplicationController

  def index
    if params[:search]
      @foods = Food.search(params[:search]).order("created_at DESC")
    else
      @foods = nil
    end
  end

end

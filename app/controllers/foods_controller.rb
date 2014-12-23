class FoodsController < ApplicationController

  def index
    if params[:search]
      @foods = Food.search(params[:search]).order("created_at DESC")
    else
      @posts = Food.all.order('created_at DESC')
    end
  end

end

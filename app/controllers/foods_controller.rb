class FoodsController < ApplicationController
  def index
    if params[:search]
      render json: Food.search(params[:search])
    end
  end
end

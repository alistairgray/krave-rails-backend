class RestaurantsController < ApplicationController
  def index
  end

  def new
  end

  def create
    # headers['Access-Control-Allow-Origin'] = '*'
    restaurant = Restaurant.create(
      name: 
    )
    render json: restaurant
  end

  def edit
  end

  def show
  end
end

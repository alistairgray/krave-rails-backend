class RestaurantsController < ApplicationController
  before_action :authenticate_user

  def index
  end

  def create
    restaurant = Restaurant.create(
      name: params[:name],
      address: params[:address],
      cuisine: params[:cuisine]
    )
    p restaurant.errors
    render json: restaurant
  end

  def show
    
  end

  def search
    search = params[:search].downcase
    results = Restaurant.all.where("lower(name) LIKE :search OR lower(cuisine) LIKE :search", search: search)

    render json: results
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :address,
      :cuisine
    )
  end

end

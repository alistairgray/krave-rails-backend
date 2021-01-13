class RestaurantsController < ApplicationController
  before_action :authenticate_user

  def address
  end

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
    current_restaurant = Restaurant.find params[:id]
    restaurant_data = {
      restaurant: current_restaurant,
      menuItems: current_restaurant.menus
    }
    render json: restaurant_data
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

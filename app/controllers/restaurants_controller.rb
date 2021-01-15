class RestaurantsController < ApplicationController
  before_action :authenticate_user

  def address
  end

  def location_search
    restaurants = Restaurant.near([
      params[:lat],
      params[:lng]
  ], 50)

    render json: restaurants
  end

  def index
  end

  def create
    restaurant = Restaurant.create! restaurant_params
    User.find(params[:user_id]).restaurants << restaurant
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

  def update
    restaurant = Restaurant.find params[:id]
    restaurant.update restaurant_params

    render json: restaurant
  end

  def destroy
    Restaurant.destroy params[:id]
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :address,
      :cuisine,
      :description,
      :image,
      :user_id
    )
  end

end

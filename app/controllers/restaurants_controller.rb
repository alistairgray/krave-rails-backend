class RestaurantsController < ApplicationController
  def index
  end

  def new
  end

  def create
    # headers['Access-Control-Allow-Origin'] = '*'
    restaurant = Restaurant.create(
      name: params[:name],
      address: params[:address],
      cuisine: params[:cuisine]
    )
    render json: restaurant
  end

  def new
  end

  def create
  end

  def index
  end

  def show
    
  end

  def search
    search = params[:search].downcase
    results = Restaurant.all.where("lower(name) LIKE :search OR lower(cuisine) LIKE :search", search: search)

    render json: results
  end

  def edit
  end

  def update
  end

  def destroy
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

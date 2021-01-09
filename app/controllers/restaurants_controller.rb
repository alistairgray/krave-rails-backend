class RestaurantsController < ApplicationController
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
end

class MenusController < ApplicationController
  def index
  end

  def show
    menu = Menu.find params[:id]

    render json: menu
  end

  def edit
  end

  def new
  end

  def update
  end

  def destroy
  end
end

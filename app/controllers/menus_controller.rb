class MenusController < ApplicationController
  def create
    Menu.create menu_params
  end

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
    menu = Menu.find params[:id]
    menu.update menu_params

    render json: menu
  end

  def destroy
    Menu.destroy params[:id]
  end

  private

  def menu_params
    params.require(:menu).permit(:menu_item, :item_description, :image, :restaurant_id)
  end
end

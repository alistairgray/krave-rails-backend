class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new user_params
      if @user.save
       render json: @user, status: :created
      else
       render json: @user.errors, status: :unprocessable_entity
      end
  end

  def control_panel
    user_data = {
      id: current_user.id,
      name: current_user.name,
      authorisation: current_user.authorisation,
      email: current_user.email,
      restaurants: current_user.restaurants
    }

    render json: user_data
  end

  private
  def user_params
   params.require(:user).permit(:name, :email, :password, :password_confirmation, :authorisation)
  end

end

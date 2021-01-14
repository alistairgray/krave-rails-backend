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
    # Return menus nested in restaurants nested in user
    user_data = current_user.as_json(
      include: {restaurants: {
        include: :menus
      }}
    )

    render json: user_data
  end

  private
  def user_params
   params.require(:user).permit(:name, :email, :password, :password_confirmation, :authorisation)
  end

end

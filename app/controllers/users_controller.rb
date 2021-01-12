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
    p @user.errors
  end

private
def user_params
 params.require(:user).permit(:name, :email, :password, :password_confirmation, :authorisation)
end

end

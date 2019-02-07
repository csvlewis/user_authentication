class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(strong_params)
    redirect_to users_path
  end

  private

  def strong_params
    params.require(:user).permit(:name, :email, :password)
  end
end

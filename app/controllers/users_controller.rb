class UsersController < ApplicationController

  def new
    @user = User.new
  end
  def create
    user_params = params.require(:user).permit(:name, :email, :password)

    User.create(user_params)

    redirect_to root_path, notice: 'Successful registration'
  end

  def edit
  end
end

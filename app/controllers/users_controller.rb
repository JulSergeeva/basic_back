class UsersController < ApplicationController

  def new
    @user = User.new
  end
  def create
    user_params = params.require(:user).permit(:name, :email, :password)

    user = User.create(user_params)
    session[:user_id] = user.id

    redirect_to user_dashboard_path, notice: 'Successful registration'
  end

  def edit
  end

  def dashboard
    @user = current_user
  end
end

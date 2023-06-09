class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:login])&.authenticate(params[:password])

    if user.present?
      session[:user_id] = user.id

      redirect_to user_dashboard_path, notice: 'You successfully logged in'
    else
      flash.now[:alert] = 'Wrong email or password'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'You successfully logged out'
  end
end

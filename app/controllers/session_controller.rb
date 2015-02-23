class SessionController < ApplicationController

  def logout
    session.clear
    redirect_to '/'
  end

  def login
    user = User.find_by(accepted_user_params)
    if user.try(accepted_user_params)
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def new
    render "sessions/login"
  end

  private

  def accepted_user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

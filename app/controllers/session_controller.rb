class SessionController < ApplicationController

  def logout
    session.clear
    redirect_to '/'
  end

  def login
    user = User.find_by(accepted_session_params)
    if user.try(accepted_session_params)
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

  def accepted_session_params
    params.require(:session).permit(:name, :email, :password_digest)
  end

end

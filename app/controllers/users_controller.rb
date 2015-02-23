class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def logout
    session.clear
    redirect_to '/'
  end

  def create
    user = User.create(accepted_user_params)
    session[:user_id] = user.id
    redirect_to '/'
  end

  private

  def accepted_user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

class LilgistsController < ApplicationController

  def show_all
    user = User.find(current_user.id)
    render :json => user.lilgists
  end

  def show
    user = User.find(current_user.id)
    render :json => user.lilgists.find(:id)
  end

end

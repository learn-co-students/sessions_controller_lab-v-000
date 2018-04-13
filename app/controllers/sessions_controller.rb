class SessionsController < ApplicationController
  # helper_method :logged_in?, :current_user
  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if current_user
    redirect_to '/'
  end
end

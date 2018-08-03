class SessionsController < ApplicationController
  helper_method :logged_in?, :username

  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to login_path
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end

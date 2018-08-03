class SessionsController < ApplicationController
  helper_method :logged_in?, :username

  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end

  def logged_in?
    session.key?(:name)
  end

  def username
    session[:username]
  end
end

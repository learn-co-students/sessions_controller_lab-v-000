class SessionsController < ApplicationController
  def new
  end

  def create
    if logged_in?
      redirect_to '/'
    end
    if params[:name] && params[:name] != ''
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      session.delete(:name)
    end
  end

  private
  def logged_in?
    !!session[:name]
  end
end

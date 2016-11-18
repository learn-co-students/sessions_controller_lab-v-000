class SessionsController < ApplicationController

  def index
    if !logged_in?
      redirect_to login_path
    end
  end

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if logged_in?
      session.delete :name
    end
      redirect_to login_path
  end
end

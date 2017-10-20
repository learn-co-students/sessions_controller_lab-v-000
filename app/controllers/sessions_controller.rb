class SessionsController < ApplicationController
  def new
    redirect_to root_path if session[:name]
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:name) if session[:name]
    redirect_to login_path
  end
end

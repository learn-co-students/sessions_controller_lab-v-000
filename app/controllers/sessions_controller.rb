class SessionsController < ApplicationController
  def new
    if session[:name] && !session[:name].empty?
      redirect_to root_path
    end
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
    if !session[:name].nil?
      session.clear
    end
    redirect_to root_path
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if session[:name].nil? || session[:name].empty?
      session[:name]
    else
      session.clear
    end
    redirect_to login_path
  end
end

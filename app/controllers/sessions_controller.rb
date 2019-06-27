class SessionsController < ApplicationController
  def new
  end

  def create

    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    elsif params[:name] && !session[:name]
      session[:name] = params[:name]
    elsif session[:name]
      redirect_to root_path
    end

  end

  def destroy
  end
end

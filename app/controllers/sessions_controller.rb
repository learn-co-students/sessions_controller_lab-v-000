class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user
      redirect_to root_path
    elsif params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear if session[:name]
    redirect_to login_path
  end
end

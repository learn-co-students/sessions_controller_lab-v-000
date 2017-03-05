class SessionsController < ApplicationController
  def new
    redirect_to root_path and return if current_user
  end

  def create
    redirect_to login_path and return if params[:name].blank?
    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end

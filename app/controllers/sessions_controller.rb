class SessionsController < ApplicationController
  def new
  end

  def create
    if !valid_name?(params[:name])
      redirect_to login_path 
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def valid_name?(name)
    name != nil && name != ""
  end
end
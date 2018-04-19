class SessionsController < ApplicationController

  def new
    if session[:name].present?
      redirect_to root_path
    end
  end

  def create
    if !params[:name].present?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end

  end

  def destroy
    if session[:name].present?
      session.delete :name
      redirect_to logout_path
    else
      redirect_to login_path
    end
  end

end

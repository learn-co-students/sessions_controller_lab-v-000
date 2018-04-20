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
    session.delete :name
    redirect_to login_path
  end

end

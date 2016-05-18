class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    reset_session if !session[:name].blank?
    redirect_to root_path
  end
end

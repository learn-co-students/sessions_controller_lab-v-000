class SessionsController < ApplicationController
  def new
  end

  def create 
  	session[:name] = params[:name]
    if !session[:name].present?
      redirect_to sessions_new_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name if session[:name].present?
    redirect_to sessions_new_path
  end
end
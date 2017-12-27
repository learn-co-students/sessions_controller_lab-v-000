class SessionsController < ApplicationController
  
  def new

  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else 
      flash[:alert] = "Please Enter a Valid Name"
      redirect_to sessions_new_path
    end

  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private


end

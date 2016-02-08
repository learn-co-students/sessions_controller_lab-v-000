class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:name].nil?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end

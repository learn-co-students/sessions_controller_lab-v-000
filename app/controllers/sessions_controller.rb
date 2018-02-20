class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to home_path
    end
  end

  def home
  end

  def destroy
    session.clear if session[:name]
    redirect_to sessions_new_path
  end
end

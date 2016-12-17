class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    if session[:name] && !session[:name].nil? && !session[:name].empty?
      session.delete :name
      redirect_to '/'
    else
      redirect_to login_path
    end
  end
end

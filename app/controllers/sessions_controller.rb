class SessionsController < ApplicationController
  def new
  end
  
  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end
  
  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to  login_path
  end
end

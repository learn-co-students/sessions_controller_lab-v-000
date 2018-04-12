class SessionsController < ApplicationController
  def new
  end
  
  def create
    session[:name] = params[:name]
    if session[:name] != nil 
      redirect_to "/"
    elsif session[:name] == nil
    redirect_to '/sessions/new'
    end
  end
  
  def destroy
    if session[:name] != nil
    session.delete(:name)
  else
    session[:name] == nil
    end
    redirect_to root_path
  end
end
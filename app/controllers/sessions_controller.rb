class SessionsController < ApplicationController

  def new
  end 

  def destroy 
  end  

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/login'
    end 
  end

  def destroy
    session.clear if session[:name]
    redirect_to '/login'
  end 

end

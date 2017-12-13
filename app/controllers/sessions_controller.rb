
class SessionsController < ApplicationController 

  def index 
    @session = session[:name]
      
  end 
  
  def new 
  end 

  def create 
    if params[:name] == nil || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end    
  end

  def destroy 
    if session[:name] == nil
      redirect_to '/'
    else
      session.delete :name
      redirect_to '/'
    end 
  end
end 

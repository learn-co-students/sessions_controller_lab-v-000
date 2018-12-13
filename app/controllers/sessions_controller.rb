class SessionsController < ApplicationController
  def new
  end
  
  def create
    if !params[:name].blank? && !params[:name].nil?
      session[:name] = params[:name]
      redirect_to '/'
    else 
      redirect_to '/sessions/new'
    end
  end
  
  def destroy
    session.delete :name
    redirect_to '/'
  end
  
end
  


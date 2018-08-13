class SessionsController < ApplicationController
  def new
    render 'new'
  end

  def create 
    if params[:name] == nil || params[:name] == ""
      redirect_to '/sessions/new'
    elsif params[:name]
    session[:name] = params[:name]
    redirect_to '/'
    end 
  end 

  def destroy
    if session
    session.delete :name
    end  
    redirect_to '/login'
  end 

end

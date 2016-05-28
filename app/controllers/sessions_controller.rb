class SessionsController < ApplicationController


 
  def create
   
    if params[:name] == nil
      flash[:message] = "Need a username"
      redirect_to '/login'
    elsif params[:name] == ""
       flash[:message] = "Need a username"
      redirect_to '/login'
    else
     session[:name] = params[:name]
     
      redirect_to '/'
    end

  end



  def destroy

    session.clear if session[:name] != nil
    redirect_to '/'

  end




end
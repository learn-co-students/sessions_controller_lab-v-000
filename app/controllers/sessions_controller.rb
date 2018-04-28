class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == ""
      redirect_to "/login"
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.clear 
    redirect_to '/'
  end

end
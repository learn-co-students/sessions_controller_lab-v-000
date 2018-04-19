class SessionsController < ApplicationController

  def new
    if session[:name]
      redirect_to "/"
    end
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to "/login"
    elsif session[:name]
      redirect_to "/"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if session[:name]
      session.clear
    end
    redirect_to "/login"
  end

end

class SessionsController < ApplicationController

  def new
    redirect_to "/login"
  end

  def create

    if session[:name] != nil
      redirect_to '/'
    elsif params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
    end
    redirect_to '/home'
  end

end

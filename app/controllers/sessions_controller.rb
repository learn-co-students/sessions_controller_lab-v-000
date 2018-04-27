class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to '/login' 
    else 
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if session[:name] = params[:name]
    redirect_to '/logout'
  end

end

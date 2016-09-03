class SessionsController < ApplicationController
  
  def new
    
  end

  def create
    if params[:name].blank?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end

end

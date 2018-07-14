class SessionsController < ApplicationController
  def new
    
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if !session[:name].blank?
      session.delete :name
    end
    redirect_to '/'
  end
end

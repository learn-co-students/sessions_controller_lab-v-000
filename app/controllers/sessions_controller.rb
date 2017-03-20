class SessionsController < ApplicationController
  def new
    redirect_to '/login' if !session[:name] || sessions[:name].empty?
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end
end

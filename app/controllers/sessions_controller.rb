class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].blank?
      redirect_to '/sessions/new'
    elsif session[:name] == params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    #byebug
    if !params[:name] || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] != nil
      session.clear
      redirect_to '/'
    end
  end
end

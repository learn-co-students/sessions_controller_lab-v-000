class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end
end

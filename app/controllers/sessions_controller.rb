class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      #redirect_to '/sessions/new'
      redirect_to '/login'
    else
      #binding.pry
      session[:name] = params[:name]
      redirect_to '/session/index'
    end
  end

  def destroy
    #session.delete :name
    session[:name] = nil
    #redirect_to '/sessions/new'
    redirect_to '/login'
  end

  def index
  end
end

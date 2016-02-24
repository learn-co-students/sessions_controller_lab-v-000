class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      #binding.pry
      session[:name] = params[:name]
      redirect_to '/session/index'
    end
  end

  def destroy
    #session.delete :name
    session[:name] = nil
    redirect_to '/sessions/new'
  end

  def index
  end
end

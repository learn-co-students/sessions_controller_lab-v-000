require 'pry'

class SessionsController < ApplicationController
  def new
  end
  
  def create
    #binding.pry
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to action: 'new'
    end
  end
  
  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to action: 'new'
  end
end

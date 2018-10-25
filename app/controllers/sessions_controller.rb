require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if params[:name] == nil
      redirect_to sessions_new_path
    elsif params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      #binding.pry
      redirect_to "/"
    end
  end

  def destroy
    #binding.pry
    if session[:name]
      session.delete :name
    end
    redirect_to "/"
  end

end

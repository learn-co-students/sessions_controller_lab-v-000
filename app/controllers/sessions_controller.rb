require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if params[:name] == nil
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      #binding.pry
      redirect_to "/"
    end
  end
end

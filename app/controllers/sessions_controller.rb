class SessionsController < ApplicationController

  def new
    #go to login form
  end

  def create
    if !params[:name] || params[:name] = ""
      redirect_to '/login'
    else
      if params[:name] != session[:name]
        session[:name] = params[:name]
      end
      redirect_to '/'
    end
    binding.pry
  end

  def destroy
    session[:name].clear
  end

end
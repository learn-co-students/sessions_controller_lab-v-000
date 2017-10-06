class SessionsController < ApplicationController

  def new
      # nothing to do here!
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.clear
  end

end

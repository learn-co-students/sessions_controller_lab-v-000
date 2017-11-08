class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name] == ""
      redirect_to '/sessions/new' #login page
    else
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end
end

class SessionsController < ApplicationController

  def new #route: get '/login'
  end

  def create #route: post '/login'
    if params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy#route: post '/logout'
    session[:name] == nil if session[:name] == nil
    session.delete :name
    redirect_to '/'
  end

end

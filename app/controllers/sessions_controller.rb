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
    if session[:name] == nil
      redirect_to '/'
    else
      session.delete :name
      redirect_to '/'
    end
  end

end

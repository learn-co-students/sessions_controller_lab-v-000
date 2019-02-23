class SessionsController < ApplicationController

  def new
  end

  def create
    session[:username] = params[:username]
    session[:name] = params[:name]

      redirect_to '/sessions/new'

end

  def destroy
    session.delete :username
    session.delete :name
  end

end

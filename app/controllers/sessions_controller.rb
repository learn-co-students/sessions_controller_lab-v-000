class SessionsController < ApplicationController

  def create
    session[:name] = params[:name]
    session[:name].blank? ? (redirect_to '/login') : (redirect_to '/')
  end

  def destroy
    session.clear if session[:name]
  end
end

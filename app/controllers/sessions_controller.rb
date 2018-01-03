class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/sessions/new"
    else params[:name]
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if session[:name]
      session.delete(:name)
      redirect_to "/sessions/new"
    else
      session[:name] = nil
      redirect_to "/"
    end
  end
end

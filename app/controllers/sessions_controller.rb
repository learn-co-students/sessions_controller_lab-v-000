class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name].present?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].present?
      session.clear
      redirect_to '/new'
    else
      redirect_to '/'
    end
  end

end

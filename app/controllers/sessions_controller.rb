class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].nil?
      redirect_to '/sessions/new'
    else
      session.delete :name
      redirect_to '/sessions/new'
    end
  end
end

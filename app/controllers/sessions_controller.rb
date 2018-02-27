class SessionsController < ApplicationController
  def home

  end

  def login

  end

  def new

  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] == nil
      session[:name]
      redirect_to '/login'
    else
      session.delete :name
      redirect_to '/login'
    end
  end

  private

  def logged_in?

  end
end

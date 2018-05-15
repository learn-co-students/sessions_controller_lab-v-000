class SessionsController < ApplicationController

  def new

  end

  def create
    unless logged_in? #true
      if params[:name] == "" || params[:name].nil?
        redirect_to '/login'
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
    end

  end

  def destroy
    if logged_in?
      session[:name] = nil
      redirect_to '/login'
    elsif session[:name].nil?
      redirect_to '/login'
    end
  end

  def logged_in?
    unless session[:name]
      false
    else
      true
    end
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil?
      redirect_to '/sessions/new'
    elsif params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end

  end

  def destroy
    #byebug
    if session[:name].nil?
      session[:name]
    elsif session[:name].present?
      session.delete :name
    end
  end

end

class SessionsController < ApplicationController

  def new
  end

  def create
    unless [nil, ''].include?(params[:name])
      session[:name] = params[:name]
      redirect_to '/' and return
    else
      redirect_to '/login' and return
    end
  end

  def destroy
    session.delete(:name) unless session[:name].nil?
    redirect_to '/login'
  end

end
class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def create
    if current_user
      redirect to'/'
    elsif !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def show
  end

  def destroy
    if session[:name]
      session.clear
      redirect_to '/login'
    end
  end
end

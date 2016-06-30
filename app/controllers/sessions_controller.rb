class SessionsController < ApplicationController
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def new
  end

  def destroy
    if session[:name].nil?
      redirect_to '/login'
    else
      reset_session
      redirect_to '/login'
    end
  end
end

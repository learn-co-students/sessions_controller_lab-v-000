class SessionsController < ApplicationController

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end

  end

  def destroy
    if session[:name]
      session.destroy
    end

  end


end

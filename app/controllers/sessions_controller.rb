class SessionsController < ApplicationController
  def new
  end

  def create
    unless params[:name].nil? || params[:name] == ""
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.destroy
    redirect_to "/"
  end
end

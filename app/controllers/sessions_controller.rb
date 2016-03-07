class SessionsController < ApplicationController

  def show

  end

  def new

  end

  def create
    params[:name] ||= ""
    if params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    redirect_to root_path

  end
end

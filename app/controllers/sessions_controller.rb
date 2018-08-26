class SessionsController < ApplicationController

  def hello
  end

  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to login_path
    else
      session[:name ] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    redirect_to "/"
  end

end

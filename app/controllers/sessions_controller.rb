class SessionsController < ApplicationController

  def new
  end

  def create
    #binding.pry

    if params[:name].nil? || params[:name].strip == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
  end

end

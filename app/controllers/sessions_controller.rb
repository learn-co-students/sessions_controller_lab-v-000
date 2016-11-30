class SessionsController < ApplicationController
  def new
    #renders sessions/new.html.erb
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to "/sessions/new"
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session.clear
    end
    redirect_to root_path
  end
end

class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    #leaves session[:name] nil if it was not set
    #clears session[:name] if it was set
    session.delete :name
    redirect_to root_path
  end

end

class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to login_path
      #redirects to the login page if :name is nil
      #redirects to login page if :name is empty
    else
      session[:name] = params[:name] #sets session[:name] if :name was given
      redirect_to '/' #redirects to "/" if logged in
    end
  end

  def destroy
    session.delete :name #clears session[:name] if it was set
    #leaves session[:name] nil if it was not set
    redirect_to '/login'
  end
end

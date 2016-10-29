class SessionsController < ApplicationController
  
  def new
  end

  def create
    # sets session[:name] if :name was given
    # redirects to "/" if logged in
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
      # redirect_to root_path
    else
      # redirects to login page if :name is empty
      redirect_to controller: 'sessions', action: 'new' 
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
end

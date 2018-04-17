class SessionsController < ApplicationController
  def new

  end
  def create
    redirect_to controller: 'sessions', action: 'new' and return if !params[:name]|| params[:name].empty? 

    session[:name]= params[:name]
     redirect_to controller: 'application', action: 'hello'
  end
  def destroy
    session.clear
    redirect_to controller: 'application', action: 'hello'
  end
end

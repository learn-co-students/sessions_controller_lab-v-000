class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].blank? #if name is not blank
      session[:name] = params[:name]  #set session
      redirect_to '/' #redirect to login
    else
      redirect_to '/sessions/new'#if name is blank, redirect to new session
    end
  end

  def destroy
    session.delete :name
  end
end

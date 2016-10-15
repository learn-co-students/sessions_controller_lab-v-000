class SessionsController < ApplicationController
  def current_user
     current_user = session[:name]
  end

  def new
    if !current_user.nil?
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def create
    if !params[:name].nil? && params[:name] != ""
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session.destroy
    redirect_to controller: 'sessions', action: 'new'
  end


end

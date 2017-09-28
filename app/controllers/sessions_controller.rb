class SessionsController < ApplicationController
  
  def new
  end

  def create
    if logged_out?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to root_url
    end
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/new'
  end


end

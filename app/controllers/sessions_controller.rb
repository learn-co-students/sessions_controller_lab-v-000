class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name]
      redirect_to '/sessions/new'
    else
      if !params[:name].nil? && params[:name].size > 0
        session[:name] = params[:name]
        redirect_to '/'
      else
        redirect_to '/sessions/new'
      end
    end
  end

  def destroy
    session.delete :name
    flash[:notice] = "You have logged out"
    redirect_to '/'
  end
end

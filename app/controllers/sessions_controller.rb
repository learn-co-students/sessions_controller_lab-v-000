class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name] && params[:name].strip != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  #   if session[:name]
  #     session.delete :name
  #   end
  #   redirect_to '/login'
  end
end

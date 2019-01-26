class SessionsController < ApplicationController
  def new

  end

  def create
     session[:name] = params[:name]
     if session[:name] == nil || session[:name].blank?
       redirect_to sessions_new_url
     else
       redirect_to '/'
     end
  end

  def destroy
    session.delete :name
    redirect_to "/login"

  end
end

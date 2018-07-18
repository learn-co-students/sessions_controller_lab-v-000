class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to root_path
  end
end

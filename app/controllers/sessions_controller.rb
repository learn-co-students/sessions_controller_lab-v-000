class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name] 
      # authenticating user by matching session name to user name
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end

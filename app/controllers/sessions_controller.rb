class SessionsController < ApplicationController
  def new
  end

  def create
    user_name = params[:name]
    if user_name.nil? || user_name.empty?
      redirect_to sessions_new_path
    else
      session[:name] = user_name
      redirect_to '/'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
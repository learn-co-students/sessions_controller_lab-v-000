class SessionsController < ApplicationController
  def new
    login_path
  end

  def create
    session[:name] = params[:name]
  #  binding.pry
    session[:name].blank? ? redirect_to(sessions_new_path) : redirect_to(root_path)
  end

  def destroy
    session.delete  :name
    redirect_to root_path
  end
end

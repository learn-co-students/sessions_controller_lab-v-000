class SessionsController < ApplicationController
  def new
  end

  def create
    current_user

    if current_user && current_user != ""
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    if current_user
      session[:name].clear
    end
    redirect_to '/'
  end
end
class SessionsController < ApplicationController

  def new
  end

  def create

    session[:name] = params[:name]
    if current_user.nil?
      redirect_to sessions_new_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to sessions_new_path
  end

end

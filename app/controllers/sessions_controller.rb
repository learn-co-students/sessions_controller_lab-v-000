class SessionsController < ApplicationController
  def new
  end

  def create
    if valid_submission?
      session[:name] = params[:name]
      redirect_to root_path
    else
      flash[:alert] = "You must enter a name to login."
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private

  def valid_submission?
    params[:name] && !params[:name].empty?
  end

end

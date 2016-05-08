class SessionsController < ApplicationController
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end
  def destroy
    if session[:name].present?
      session.delete :name
    end
    redirect_to root_path
  end
end

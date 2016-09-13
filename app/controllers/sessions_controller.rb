class SessionsController < ApplicationController

  # TODO:  write feature tests for your views
  # TODO:  create helpers for hello view logic
  def new
    redirect_to root_path if session[:name]
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end

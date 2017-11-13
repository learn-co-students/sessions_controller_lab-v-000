class SessionsController < ApplicationController
  before_action :logged_in?, only: [:new, :create]

  def new
  end

  def create

    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path and return
    end

    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

  private

  def logged_in?
    if !!session[:name]
      redirect_to root_path
    end
  end
end

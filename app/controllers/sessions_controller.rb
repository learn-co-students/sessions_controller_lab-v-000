class SessionsController < ApplicationController
  before_action :current_user, :require_login
  skip_before_action :require_login, only: [:new, :destroy]
  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    session[:name] = nil 
    redirect_to sessions_new_path
  end

  private

  def current_user
    session[:name] ||= nil
  end

  def logged_in
    redirect_to root_path if current_user
  end

  def require_login
    redirect_to sessions_new_path if !params.include?(:name) || params[:name].empty?
  end
end

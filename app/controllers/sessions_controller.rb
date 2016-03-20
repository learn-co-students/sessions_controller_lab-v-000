class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  # Login page
  def new
  end

  # Login
  def create
    if params[:name].blank?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  # Logout
  def destroy
    session.delete :name if current_user
    redirect_to sessions_new_path
  end
end

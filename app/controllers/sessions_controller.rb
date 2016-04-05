class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
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
    redirect_to root_path
  end

  private
    def require_login
      redirect_to '/' unless current_user
    end
end

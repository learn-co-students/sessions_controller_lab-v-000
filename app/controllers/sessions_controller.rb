class SessionsController < ApplicationController
  # before_action :require_login, except: [:create]

  def new
  end

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to '/login'
    else
      current_user
      redirect_to '/'
    end
  end

  def destroy
    session.destroy unless current_user.nil?
    redirect_to '/login'
  end

  private

  def require_login
    redirect_to '/login' unless logged_in?
  end
end

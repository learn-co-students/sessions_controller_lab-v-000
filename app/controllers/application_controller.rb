class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    before_action :require_login
  end

  def current_user
    session[:name]
  end

  # If not logged in, redirect to login page
  def require_login
    redirect_to sessions_new_path unless session.include? :name
  end

end
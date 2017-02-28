class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :login_required

  def hello
  end

  def current_user
    session[:name]
  end

  def set_current_user(name)
    session[:name] = name
  end

  def logged_in?
    !!current_user
  end

  def login_required
    redirect_to(login_path) unless logged_in?
  end
end

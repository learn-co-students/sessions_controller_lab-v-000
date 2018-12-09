class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method do
    :log_in
    :log_out
    :current_user
    :logged_in?
  end

  def log_in(user)
    session[:name] = user
  end

  def log_out
    session.delete(:name)
  end

  def current_user
    session[:name]
  end

  def logged_in?
    !!current_user
  end

end

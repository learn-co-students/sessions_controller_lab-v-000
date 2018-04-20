class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :logged_in?

  def logged_in?
    session[:name].present?
  end

  def index
    if !logged_in?
      redirect_to login_path
    else
      render :hello
    end
  end

  def login
    redirect_to new_sessions_path
  end

  def logout
    redirect_to login_path
  end

end

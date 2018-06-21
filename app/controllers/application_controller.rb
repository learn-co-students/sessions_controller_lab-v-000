class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if logged_in?
      set_user
    end
  end

  private
  def logged_in?
    !!session[:name]
  end

  def set_user
    @user = session[:name]
  end
end

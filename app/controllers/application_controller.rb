class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if session[:name]
      @username = session[:name]
      @logged_in = true
    else
      @logged_in = false
    end
  end
end

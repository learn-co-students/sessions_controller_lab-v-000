class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?
  
  def hello
    if !logged_in?
      redirect_to(login_path)
    end
  end

  #helpers
  def logged_in?
    !!session[:name]
  end

end
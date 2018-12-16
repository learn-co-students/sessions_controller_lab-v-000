class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
	  if logged_in?
		  render :'application/hello'
	  else
		  redirect_to login_path
	  end
  end

  helper_method :logged_in?, :log_in

  def logged_in?
	  return false if session[:name].nil?
	  return false if session[:name].empty?
	  true 
  end

  def log_in
	session[:name] = params[:name]
  end
end

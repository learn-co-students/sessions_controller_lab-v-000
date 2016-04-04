class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user 
    session[:name]
  end
  
  def logged_in?
    !current_user.nil?  
  end
  
  private 
  
  def require_login 
    if session[:name] == "" || session[:name].nil?
      redirect_to sessions_new_path
    end
  end
  
end

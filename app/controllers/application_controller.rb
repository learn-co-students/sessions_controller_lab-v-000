class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception

   def hello
     if !logged_in?
     else
      current_user
     end
   end

   def current_user
     session[:name]
   end

   def logged_in?
     !!current_user
   end
   helper_method :current_user
   helper_method :logged_in?
   def require_login
     redirect_to "/login" unless session.include?(:name)
   end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login, only: ['hello', :home]



	def current_user
		session[:name]
	end

private

	def require_login
		redirect_to login_path if session[:name].nil? || session[:name].empty? 
	end
end
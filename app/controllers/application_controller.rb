class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def logged_in?
		session.include?(:name) && session[:name]!=''
	end
end
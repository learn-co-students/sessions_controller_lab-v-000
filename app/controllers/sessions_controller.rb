class SessionsController < ApplicationController

	def new
	end

	def create
		session[:name] = params[:name]

		redirect_to login_path and return if session[:name].nil? || session[:name].empty?

		redirect_to root_path
	end

	def destroy
		session.delete(:name)
		redirect_to root_path
	end

end
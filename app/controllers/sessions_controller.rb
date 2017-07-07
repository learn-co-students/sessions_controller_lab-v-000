class SessionsController < ApplicationController

	def new
		if session[:name]
			redirect_to "/"
		end
	end

	def create
		if params[:name] == "" || params[:name] == nil
			redirect_to login_path
		else
			session[:name] = params[:name]
			redirect_to "/"
		end
	end

	def destroy
		session.clear
		redirect_to login_path
	end

end
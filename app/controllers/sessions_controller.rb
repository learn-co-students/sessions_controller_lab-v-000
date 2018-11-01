class SessionsController < ApplicationController
	def index
		if logged_in?
			@username = session[:name]
		end
	end

	def new
	end

	def create
		session[:name] = params[:name]
		if session[:name] != nil && session[:name] != ""
			redirect_to '/'
		else
			redirect_to '/sessions/new'
		end
	end

	def destroy
		if logged_in?
			session.delete :name
		else
			session[:name] = nil
		end
		redirect_to '/sessions/new'
	end

private
	def logged_in?
		if session
		end
	end

end

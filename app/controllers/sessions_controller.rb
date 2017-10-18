class SessionsController < ApplicationController
	def index		
	end

	def new
		
	end

	def create
		if params[:name].nil? || params[:name].empty?
			redirect_to '/login'
		elsif params[:name]
				session[:name] = params[:name]
				redirect_to '/'
		end
	end

	def destroy
		if session[:name]
			session.delete :name			
		end
		redirect_to '/login'
	end
end
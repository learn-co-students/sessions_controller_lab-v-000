class SessionsController < ApplicationController

	def new 
	end

	def create 
		if !params[:name] || params[:name] == ""
			redirect_to login_url
		else 
			session[:name] = params[:name]
			redirect_to root_url	
		end	
	end

	def destroy 
		if session[:name]
			session.delete(:name)
			redirect_to root_url
		else 
			redirect_to root_url	
		end	
	end 
end

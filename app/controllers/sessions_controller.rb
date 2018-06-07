class SessionsController < ApplicationController 	
	def new 
	
	end 
	
	def create 
		@name = params[:name] 
		if params[:name].nil? || params[:name].empty? 
			redirect_to '/login', alert: "Please log in." 
		elsif !session[:name].nil?
			redirect_to '/'
		else 
			session[:name] = @name 
			redirect_to '/'
		end 
	end 


	def destroy 
		session.delete :name if !session[:name].nil?
		redirect_to '/login'
	end 
end 

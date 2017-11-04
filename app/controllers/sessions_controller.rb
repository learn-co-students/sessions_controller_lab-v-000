class SessionsController < ApplicationController

	def new
	end

	def create
		session[:name] = params[:name]
		if params[:name] != nil && params[:name] != ""
       	 	redirect_to '/'
       	else
       		redirect_to '/login'
       	end
	end

	def destroy
		if !session[:name]
			session[:name] == nil 
		else
 			session.delete :name
 		end
 		redirect_to '/login'
	end

end
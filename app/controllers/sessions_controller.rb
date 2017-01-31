class SessionsController < ApplicationController

	def new
	end

	

	def create
		#redirect to login if no name given
		return redirect_to(controller: 'sessions',
											action: 'new') if !params[:name] || params[:name].empty?
		#if name given
		#set session[:name]
		session[:name] = params[:name]
		#and redirect
		redirect_to controller: 'application', action: 'hello'
	end



	def destroy
		session.delete :name
		redirect_to controller: 'application', action: 'hello'
	end

end
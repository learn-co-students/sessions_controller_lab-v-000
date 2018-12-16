class SessionsController < ApplicationController
	def new
	end

	def create
	  log_in
	  if logged_in?
		  redirect_to '/'
	  else
		  redirect_to login_path
	  end
	end

	def destroy
	  session.delete :name
	  render :new
	end
end

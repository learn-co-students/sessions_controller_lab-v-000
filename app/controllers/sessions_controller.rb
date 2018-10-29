class SessionsController < ApplicationController
  def new
  end

	def create
		if params[:name] &&	(params[:name].strip.length > 0)
			session[:name] = params[:name].strip
			
			if params[:name].strip == session[:name].strip
				redirect_to root_path
			end 
		else
			redirect_to sessions_new_path
		end
	end

	def destroy
		session.delete :name 
	end
end

class ApplicationController < ActionController::Base

	def hello
		if is_logged_in
			render :hello
		else	
			redirect_to login_path
		end
	end

	def is_logged_in
		session[:name]
	end

end
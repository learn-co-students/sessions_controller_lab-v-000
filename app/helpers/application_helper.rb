module ApplicationHelper

	def	login_check(session)
		if session[:name].present?
			"hi, #{session[:name]}"
		else 
			form_tag '/login', method: :get do 
				submit_tag "Login"
			end 
		end 
	end 

end

module SessionsHelper
	def logged_in?
		session.has_key?(:name)
	end
end

require 'pry'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


def hello
binding.pry
if session[:name] == [] || session[:name] == nil
	redirect_to '/login'
end

end




end
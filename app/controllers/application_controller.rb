class ApplicationController < ActionController::Base

   protect_from_forgery with: :exception

   def hello
     redirect to login_path if !session[:name].present?
   end

end

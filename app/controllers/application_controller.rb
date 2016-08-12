class ApplicationController < ActionController::Base  
  protect_from_forgery with: :exception


  def current_user
  	session[:id] = params[:id]
  	session[:name]
  end
end

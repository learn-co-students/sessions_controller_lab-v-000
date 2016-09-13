class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def current_user
    session[:name] ||= params[:name]
  end
  
end
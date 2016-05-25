class ApplicationController < ActionController::Base
  protect_from_forgery  with: :exception

  def logged_in
    current_user != nil ? true : false
  end

  def current_user
    session ? session[:name] : nil
  end
end

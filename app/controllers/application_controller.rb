class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name] = params[:name]
    @current_user = session[:name]
  end

  def hello
    @current_user
  end
end
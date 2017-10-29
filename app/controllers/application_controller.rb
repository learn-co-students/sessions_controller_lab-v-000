class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    render 'sessions/new' if !logged_in?
  end


  private

  def logged_in?
    !!session[:name] && !session[:name].blank? ? true : false
  end


end

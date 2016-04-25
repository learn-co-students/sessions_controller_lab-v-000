class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def log_in
    session[:name] ||= params[:name]
  end
end

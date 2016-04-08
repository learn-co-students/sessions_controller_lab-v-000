class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def hello
    redirect_to sessions_new_path unless logged_in?
  end

  def log_in
    session[:name] ||= params[:name]
  end

  def current_user
    session[:name]
  end

  def logged_in?
    if current_user.nil? || current_user.empty?
      return false
    else
      true
    end
  end
end

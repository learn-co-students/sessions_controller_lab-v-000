class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def logged_in?
    !current_user == nil
  end

  def require_login
    redirect_to new_session_url unless current_user
    # return head(:forbidden) unless session.include? :user_id
  end

end

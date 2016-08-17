class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authentication_required

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= session[:name]
  end

  helper_method :current_user

end

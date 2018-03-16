class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def hello
    if current_user.nil?
      redirect_to 'login'
    else
      render :hello
    end
  end

  def current_user
    @current_user ||= session[:name]
  end
end

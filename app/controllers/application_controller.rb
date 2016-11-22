class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    require_log_in
  end

  private

  def require_log_in
    redirect_to controller: 'sessions', action: 'new' if !session[:name]
  end
end

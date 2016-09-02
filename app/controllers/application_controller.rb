class ApplicationController < ActionController::Base

  def hello
    require_logged_in
  end

  def current_user
    session[:name]
  end

private

  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end

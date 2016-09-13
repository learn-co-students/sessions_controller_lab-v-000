class ApplicationController < ActionController::Base

  def current_user
    session[:name]
  end

  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end

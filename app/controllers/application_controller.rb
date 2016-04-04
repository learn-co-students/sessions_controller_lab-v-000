class ApplicationController < ActionController::Base

  def current_user
    session[:name]
  end

  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end
end

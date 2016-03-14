class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello

  end

  private

  def current_user
    session[:name]
  end

end

class ApplicationController < ActionController::Base

  def hello

  end

  private

  def current_user
    session[:name]
  end

end

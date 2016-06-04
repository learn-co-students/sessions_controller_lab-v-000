class ApplicationController < ActionController::Base
  def current_user
    @user = session[:name]
  end
end

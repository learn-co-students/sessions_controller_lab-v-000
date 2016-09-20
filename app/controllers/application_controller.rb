# class ApplicationController < ApplicationController::Base  DOES NOT WORK!
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @user = session[:name]
  end

end

class ApplicationController < ActionController::Base
  def hello
    redirect_to login_path unless session[:name]
  end
end

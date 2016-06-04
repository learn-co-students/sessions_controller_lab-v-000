class ApplicationController < ActionController::Base
  def hello
    @user = session[:name]
  end
end

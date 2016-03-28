class ApplicationController < ActionController::Base
  def user
    session[:name]
  end

  def hello
    @user = user
  end
end

class ApplicationController < ActionController::Base
  def current_user
    @user = params[:name] 
  end

  def hello
    session[:name] = current_user
  end
  
end

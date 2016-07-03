class ApplicationController < ActionController::Base

  def current_user
      session[:name]
  end


  def hello
    redirect_to login_path unless current_user
  end

  def require_logged_in
    redirect_to login_path unless current_user
  end

end

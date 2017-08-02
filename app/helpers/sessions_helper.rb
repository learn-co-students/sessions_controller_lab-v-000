module SessionsHelper
  def current_user
    session[:name]
  end
  def logged_in?
    !current_user.nil?
  end

end

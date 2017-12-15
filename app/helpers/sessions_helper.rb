module SessionsHelper
  def current_user
    session[:name]
  end
end

module SessionsHelper
  def logged_in?
    !!session[:name]
  end
end

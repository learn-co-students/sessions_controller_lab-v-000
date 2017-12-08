module SessionsHelper
  def logged_in?
    !!session[:name] && !session[:name].blank?
  end
end

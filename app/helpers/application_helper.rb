module ApplicationHelper
  def logged_in?
    session[:username]
  end 
end

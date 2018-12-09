module ApplicationHelper
  def log_in(user)
    session[:name] = user
  end
end

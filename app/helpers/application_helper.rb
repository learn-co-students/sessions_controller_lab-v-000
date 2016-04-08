module ApplicationHelper

  def logged_in?
    !session[:name].nil?
  end
end

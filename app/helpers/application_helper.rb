module ApplicationHelper
  def greeting_or_login
    if logged_in?
      content_tag(:h1, "Hi, #{session[:name]}.")
    else
      link_to "Login", login_path
    end
  end

  def logged_in?
    session[:name] && !session[:name].blank? ? true : false
  end
end

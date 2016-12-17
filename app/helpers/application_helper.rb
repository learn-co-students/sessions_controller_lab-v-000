module ApplicationHelper
  def hi?
    if !session[:name].nil? && !session[:name].empty?
       "Hi, <%= session[:name] %>." #not displayed in view
       button_to "logout", logout_path
    else
      link_to 'You must login first', login_path
    end
  end
end

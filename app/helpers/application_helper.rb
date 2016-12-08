module ApplicationHelper

  def hello_content(session)
    if session[:name]
      render 'logout'
    else
      render 'login'
    end
  end

end

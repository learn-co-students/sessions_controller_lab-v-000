module ApplicationHelper

  def login?
    @name = session[:username]
  end

end

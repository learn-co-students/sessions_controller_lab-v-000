module SessionsHelper

  def user
    session[:name]
  end
  
end

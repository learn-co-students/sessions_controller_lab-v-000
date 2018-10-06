module SessionsHelper

  def session_name_empty?
    session[:name].empty?
  end
end

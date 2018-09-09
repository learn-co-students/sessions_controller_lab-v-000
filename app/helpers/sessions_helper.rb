module SessionsHelper
  def redirect_to_login_if_not_logged_in(session)
    if !session[:username] || session[:username].empty?
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end

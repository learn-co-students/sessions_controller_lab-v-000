module SessionsHelper

  def log_in(user)
    session[:name] = params[:name]
  end
end

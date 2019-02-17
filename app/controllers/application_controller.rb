class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :logged_in?, :logout!

   def hello
    if logged_in?
      render :hello
    else
      redirect_to login_path
    end
  end


  def logged_in?
    !!session[:name] && !session[:name].empty?
  end

   def logout!
    session.clear
    redirect to '/'
  end
end
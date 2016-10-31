class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if current_user
      render :hello
    else
      redirect_to '/sessions/new'
    end
  end

  def current_user
    session[:name]
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?, :name


  def hello
    if !logged_in?
      redirect_to '/login'
    else
      @name = name
    end
  end

  private
    def name
      session[:name]
    end

    def logged_in?
      !name.nil?
    end


end

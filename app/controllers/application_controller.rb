class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   helper_method :invalid_name?, :login

  def invalid_name?
    params[:name] == nil || params[:name].empty?
  end

  def login
    session[:name] = params[:name]
  end


  def hello
     if session[:name]
       render :hello
     else
       render :'sessions/new'
     end
   end
end

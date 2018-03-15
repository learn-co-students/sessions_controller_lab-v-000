class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def hello
    #will default render to views/application/hello

    #if the session has a name, stay on this page,
    #if not, redirect to the new action in the session controller

    #so

    redirect_to controller: "sessions", action: 'new' unless session[:name]

  end
end

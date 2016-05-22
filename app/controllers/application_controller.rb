class ApplicationController < ActionController::Base

  def hello
    redirect_to '/sessions/new' unless session[:name]
  end

end
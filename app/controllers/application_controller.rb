class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def hello
    redirect_to login_path unless session.include? :name
  end

end

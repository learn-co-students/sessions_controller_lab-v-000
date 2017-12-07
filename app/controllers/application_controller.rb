class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello

  end

  private

  def valid_name?
    params[:name] && !params[:name].nil? && !params[:name].blank? ? true : false
  end
end

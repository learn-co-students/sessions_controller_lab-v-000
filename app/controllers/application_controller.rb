class ApplicationController < ActionController::Base

  def hello
    if session[:name].nil?
      redirect_to login_path
    end
  end

end

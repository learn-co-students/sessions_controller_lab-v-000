class ApplicationController < ActionController::Base
    def hello

    end

  def current_user
    @username ||= session[:name]
  end


    def logged_in?
      !!current_user
    end
end

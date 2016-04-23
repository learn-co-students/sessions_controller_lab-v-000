class ApplicationController < ActionController::Base
  before_action :require_login, except: [:new, :create, :destroy]

  def hello
    @user = current_user
  end

  private

    def current_user
      session[:name]
    end

    def require_login
      redirect_to sessions_new_path unless current_user.present?
    end
end

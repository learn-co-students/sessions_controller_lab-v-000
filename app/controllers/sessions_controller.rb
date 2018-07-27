class SessionsController < ApplicationController
  helper_method :logged_in?, :current_user

  def new
  end

  def create
    if params[:name] == "" || params[:name] == nil
      flash[:alert] = "Please enter a name"
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_url
    end
  end

  def index
  end

  def destroy
    session.delete :name
    current_user = nil
    redirect_to root_url
  end

  private
    def logged_in?
      current_user ? true: false
    end

    def current_user
      session[:name]
    end
end

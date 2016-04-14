class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new,:create]

  def new

  end

  def index

  end

  def create
    if params_not_valid?
      redirect_to new_session_path
    else
      set_session_name
      redirect_to root_path
    end
  end

  def show

  end

  def destroy
    session.clear
    redirect_to new_session_path
  end

  private
  def params_not_valid?
    params[:name].nil? || params[:name] =~ /^\s*$/
  end

  def set_session_name
    session[:name] = params[:name]
  end
end

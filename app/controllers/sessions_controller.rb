class SessionsController < ApplicationController
  def new
  end

  def create
     if params[:name] && !params[:name].blank?
      user =  params[:name]
      log_in(user)
      render :hello
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
  log_out
  render :hello
  end

  private
  def log_in(user)
    session[:name] = user
  end

  def log_out
    session.delete(:name)
  end

  def current_user
    session[:name]
  end

  def logged_in?
    !!current_user
  end
end

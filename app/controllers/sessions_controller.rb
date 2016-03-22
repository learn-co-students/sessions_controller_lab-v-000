class SessionsController < ApplicationController
  before_action :redirect_logged_in, only: [:new, :create]

  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def hello
    @name = session[:name]
  end

  def destroy
    if logged_in?
      session.delete(:name)
      redirect_to sessions_new_path
    else
      redirect_to sessions_new_path
    end
 
  end

  #helpers

  def logged_in?
    !!session[:name] && !session[:name].empty?
  end

  def redirect_logged_in
    if logged_in?
      redirect_to '/'
    end
  end

end

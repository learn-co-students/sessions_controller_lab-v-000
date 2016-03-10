class SessionsController < ApplicationController
  before_action :logged_in?
  skip_before_action :logged_in?, only: [:new, :create]

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to :root
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/sessions/new'
  end

  private

  def logged_in?
    redirect_to '/sessions/new' unless current_user  
  end
end

class SessionsController < ApplicationController
  before_action :logged_in?

  def create
    redirect_to '/'
  end

  def new
  end

  def destroy
    session.delete(:name)
    redirect_to '/login'
  end

  private
  def logged_in?
    if params[:name]
      if params[:name] == ""
        session[:name]
        redirect_to '/login'
      else
        session[:name] = params[:name]
      end
    else
      redirect_to '/login' unless session[:name]
    end
  end
end

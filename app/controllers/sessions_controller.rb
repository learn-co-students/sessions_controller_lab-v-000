class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/login'
    else
      if logged_in?
        redirect_to '/'
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
    end
  end

  def destroy
    session.delete :name
  end

  private

  def logged_in?
    params[:name] == session[:name]
  end
end

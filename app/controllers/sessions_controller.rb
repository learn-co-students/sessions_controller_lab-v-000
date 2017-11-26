class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
        redirect_to sessions_new_path
    elsif
      session[:name] = params[:name]
      redirect_to root_path
    elsif logged_in?
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to sessions_new_path
  end

  private

  def logged_in?
    session[:name] == params[:name]
  end
end

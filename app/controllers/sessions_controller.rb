class SessionsController < ApplicationController

  def create
    if logged_in?
      redirect_to root_path
    elsif params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.destroy unless current_user.nil?
    redirect_to root_path
  end
end

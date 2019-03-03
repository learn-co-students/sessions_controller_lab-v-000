class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:name].blank?
  		redirect_to new_session_path
  	else
  		session[:name] = params[:name]
  		redirect_to root_path
  	end
  end

  def destroy
  	session.clear
  	redirect_to login_path
  end
end

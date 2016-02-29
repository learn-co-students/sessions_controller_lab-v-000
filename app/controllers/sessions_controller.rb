class SessionsController < ApplicationController
  def new
  end

  def create
  	redirect_to sessions_new_path unless logged_in?
  	session[:name]=params[:name]
  	
  end


  def destroy
  	session[:name]=nil
  	redirect_to sessions_new_path
  end


end
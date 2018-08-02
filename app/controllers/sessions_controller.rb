class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end
  
  def destroy
    unless session[:name].nil?
      session.destroy 
    end
    redirect_to root_path
  end
  
end



  # post create
  #   redirects to the login page if :name is nil (FAILED - 1)
  #   redirects to login page if :name is empty (FAILED - 2)
  #   sets session[:name] if :name was given (FAILED - 3)
  #   redirects to "/" if logged in (FAILED - 4)
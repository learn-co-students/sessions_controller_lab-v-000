class SessionsController < ApplicationController
  helper SessionsHelper

  def new
  end

  def create
     if params[:name] && !params[:name].blank? || logged_in?
      user =  params[:name]
      log_in(user)
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end


end

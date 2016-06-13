class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    if !params[:name].blank? 
      session[:name] =  params[:name]
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    if session[:name]
      session.destroy
      redirect_to sessions_new_path
    else
      redirect_to sessions_new_path
    end
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    if !params[:name] || params[:name].empty? 
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end 
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end
end

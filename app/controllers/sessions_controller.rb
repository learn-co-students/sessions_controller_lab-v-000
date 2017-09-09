class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    if params[:name] == '' || params[:name] == nil
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end 
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end
end

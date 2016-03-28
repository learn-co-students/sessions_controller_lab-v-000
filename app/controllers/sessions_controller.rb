class SessionsController < ApplicationController
  def new
    @user = user
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to root_path
  end

end

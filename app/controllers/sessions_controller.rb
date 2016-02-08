class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else
      set_current_user(params[:name])
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

end

class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if !params[:name].nil? || !params[:name] == ""
      session.delete :name
      redirect_to login_path
    else
      params[:name] = nil
      session.delete :name
      redirect_to login_path
    end
  end
end

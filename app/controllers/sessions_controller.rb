class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to login_path
    else
      session[:name] ||= params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name] != nil
      session[:name] = nil
    end
    redirect_to root_path
  end
end

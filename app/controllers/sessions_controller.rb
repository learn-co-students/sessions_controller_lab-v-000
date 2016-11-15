class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_url
    else
      session[:name] = params[:name]
      redirect_to root_url
    end
  end

  def destroy
    session.delete :name unless session[:name].nil?
    redirect_to login_url
  end
end

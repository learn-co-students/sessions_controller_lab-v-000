class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name]=='' || !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name unless session[:name].nil?
    redirect_to login_path
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to sessions_new_path
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if !session[:name].nil?
    redirect_to '/'
  end
end

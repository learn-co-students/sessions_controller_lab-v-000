class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].blank?
      session.delete :name
      redirect_to sessions_new_path
    else
      redirect_to sessions_new_path
    end
  end
end

class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/login'
    else
      if session[:name].blank?
        session[:name] = params[:name]
      end

      redirect_to root_path
    end
  end

  def destroy
    unless session[:name].blank?
      session.delete :name
    end

    redirect_to root_path
  end
end
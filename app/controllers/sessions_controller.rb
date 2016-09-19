class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name unless session[:name] == nil
    render :new
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    if login_params[:name].nil? || login_params[:name] == ''
      redirect_to login_path
    else
      session[:name] = login_params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name if !session[:name].nil?
    redirect_to root_path
  end

  private

  def login_params
    params.permit(:name)
  end
end

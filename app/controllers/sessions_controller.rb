class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if !name || name.empty?
      redirect_to login_path
    else
      session[:name] = name
      redirect_to :root
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
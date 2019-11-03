class SessionsController < ApplicationController

  def new
    render '/login'
  end

  def create
    if params[:name] == '' or params[:name] == nil
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to :root
    end
  end

  def destroy
    session.delete :name
    redirect_to :root
  end

end

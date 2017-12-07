class SessionsController < ApplicationController

  def create
    if valid_name?
      session[:name] = params[:name]
      redirect_to root_url
    else
      redirect_to login_url
    end
  end

  def destroy
    session.delete :name
    redirect_to root_url
  end
end

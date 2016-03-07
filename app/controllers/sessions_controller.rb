class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name] == ''
      redirect_to action: 'new'       
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.clear
    redirect_to controller: 'application', action: 'hello'
  end
end

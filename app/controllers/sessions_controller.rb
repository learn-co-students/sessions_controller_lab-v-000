class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to root_path
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to :login #'/login'
    end
  end

  def destroy
    session.delete :name
  end
end

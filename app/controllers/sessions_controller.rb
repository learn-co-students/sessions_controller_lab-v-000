class SessionsController < ApplicationController
  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def new
  end

  def destroy
    session.delete :name
  end
end

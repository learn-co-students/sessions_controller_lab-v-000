class SessionsController < ApplicationController
  def new
  end

  def create
    unless params[:name].nil? || params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name if !:name.nil?
    redirect_to '/sessions/new'
  end

end

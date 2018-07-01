class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    # if session[:name]
    if session[:name] == nil || session[:name].empty?
    redirect_to :login
  # elsif session[:name] == nil || session[:name].empty?
else
      redirect_to :controller => :application, :action => 'hello'
    end
  end

  def destroy
    render :'/application/hello'
    session.delete :name
  end
end

require 'pry'
class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    if params[:name] == '' || params[:name] == nil
      redirect_to sessions_new_path 
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
  end
end

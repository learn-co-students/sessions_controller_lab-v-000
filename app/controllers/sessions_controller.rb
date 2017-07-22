require 'pry'
class SessionsController < ApplicationController
  def index

  end

  def home

  end

  def create
    if logged_in?
      redirect_to root_path
    end

    if params[:name] == nil || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
      session.delete :name
      redirect_to root_path
  end
end

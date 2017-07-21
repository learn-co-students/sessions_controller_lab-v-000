require 'pry'
class SessionsController < ApplicationController
  def index

  end

  def home

  end

  def create
    if logged_in? == nil
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy

  end
end

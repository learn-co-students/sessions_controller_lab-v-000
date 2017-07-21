require 'pry'
class SessionsController < ApplicationController
  def index

  end

  def home

  end

  def create
    if logged_in? == nil || params[:name].empty?
      redirect_to login_path
    else
        session[:name] = params[:name] if params[:name] != nil
        redirect_to root_path
    end
  end

  def destroy

  end
end

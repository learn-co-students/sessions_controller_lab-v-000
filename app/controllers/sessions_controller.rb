require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create

    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.clear
    redirect_to sessions_new_path
  end

end

require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name] if !params[:name].empty?
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end

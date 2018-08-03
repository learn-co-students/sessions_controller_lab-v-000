require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create
    # if params[:name].present?
    #   session[:name] = params[:name]
    # end
    # redirect_to '/'
    # NOTE: need to use if block or else get double render error!
    if !params[:name].present?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end

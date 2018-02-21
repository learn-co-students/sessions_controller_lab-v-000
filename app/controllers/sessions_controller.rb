require 'pry'

class SessionsController < ApplicationController

  def new
  end

  def create
    if params["name"]
      if !params["name"].empty?
      #binding.pry
        session[:name] = params["name"]
        redirect_to root_path
      else
        redirect_to login_path
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end

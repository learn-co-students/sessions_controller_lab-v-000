class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if params[:name] == nil || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy


    if session[:name] == nil
      redirect_to sessions_new_path
    else
      session.delete(:name)
      redirect_to sessions_new_path
    end
  end


end

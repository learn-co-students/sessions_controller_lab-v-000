class SessionsController < ApplicationController
  def new
  end

  # def create
  #     session[:username] = params[:username]
  #     redirect_to '/'
  # end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to :root
  end


end

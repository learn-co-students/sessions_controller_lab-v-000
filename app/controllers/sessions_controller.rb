class SessionsController < ApplicationController
  def new
  end

  #my doing
  def create
    #binding.pry
    if params[:name] == nil || params[:name] == ""
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if !!session[:name]
      #session.destroy
      session.delete :name
    end
  redirect_to sessions_new_path
  end

end

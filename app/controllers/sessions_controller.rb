class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
      redirect_to '/'
    else
      session[:name] == nil
      redirect_to '/'
    end
  end

end

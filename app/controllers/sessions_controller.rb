class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name] == "" || params[:name].nil?
      redirect_to sessions_new_path
      
    else
      session[:name] = current_user
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end

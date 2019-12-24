class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
        redirect_to sessions_new_path, notice: "Username can't be blank."
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
  end

  def destroy
    session.delete :name
  end
end

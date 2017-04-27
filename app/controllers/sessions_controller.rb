class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to root_path
    end
    # renders the new view
  end

  def create
    if current_user
      redirect_to root_path
    elsif !params[:name] || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

  private

end

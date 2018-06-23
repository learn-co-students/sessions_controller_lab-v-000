class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if !logged_in
      binding.pry
      redirect_to login_path
    else
    render :hello
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end

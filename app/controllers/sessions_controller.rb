class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == "" || params[:name].nil?
      redirect_to '/login'
    else
      login!
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name unless !logged_in?
    redirect_to '/login'
  end
end

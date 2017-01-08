class SessionsController < ApplicationController
  def new
    session[:name] = params[:name]
  end
  def create
    if !params[:name] || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]

      redirect_to '/'
    end
  end
  def destroy
    if !session[:name] || !session[:name].empty?

      session.delete :name

    end

        redirect_to sessions_new_path

  end
end

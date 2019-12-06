class SessionsController < ApplicationController
  def new

  end

  def create
    # If the user does not enter a name, they are not logged in. Return them to the login page.
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
      redirect_to root_path
    end
  end
end

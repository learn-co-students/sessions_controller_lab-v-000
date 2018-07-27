class SessionsController < ApplicationController

  def new
  end

  def create
    # if login name provided (not empty) and name is not " "
      # set session to the provided name
    if !params[:name].blank? && !params[:name].nil?
      session[:name] = params[:name]
      # redirect to homepage
      redirect_to '/'
    else
      # else redirect to login
      redirect_to '/login'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name

      redirect_to '/'
    else

      redirect_to '/login'
    end
  end

end

# still takes me to '/' even if haven't logged in

class SessionsController < ApplicationController

  # GET "/login"
  def new
    # implicitly renders the new session page new.html.erb, or, the login page
  end

  # POST "/login"
  def create
    # render "/" or redirect ?

    if params[:name].nil? || params[:name].empty?
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  # POST "/logout"
  def destroy
    if session[:name].nil?
      redirect_to "/"
    else
      session[:name] = nil
      redirect_to "/"
    end
  end
end

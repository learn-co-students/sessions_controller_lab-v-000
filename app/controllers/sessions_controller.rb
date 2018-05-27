class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    # redirects to the login page if :name is nil
    # redirects to login page if :name is empty
    if params[:name].nil? || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      # sets session[:name] if :name was given
      # binding.pry
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    # leaves session[:name] nil if it was not set
    if !session[:name]
      session[:name]
    else
      # clears session[:name] if it was set
      session.delete :name
    end
  end
end

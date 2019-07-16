class SessionsController < ApplicationController
  def create
    # session[:name] = params[:name] # sets session[:name] if :name was given
  #  if params[:name] && !params[:name].empty?
  #    session[:name] = params[:name] # sets session[:name] if :name was given
  #  elsif session[:name]
  #    redirect_to "/"
  #  else
  #    redirect_to action: "new" # could be written as redirect_to(action: 'new') as well
  #  end
    if !params[:name] || params[:name].empty? # go to login
      redirect_to "/login"
    elsif session[:name] # go to root
      redirect_to "/"
    else # put session name and go to root
      session[:name] = params[:name]
      redirect_to "/"
    end
    
  end
  
  def new
  end
  
  def destroy
    session.delete(:name) # leaves session[:name] nil if it was not set
                          # clears session[:name] if it was set
                          # session.clear works too
  end
end
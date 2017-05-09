class SessionsController < ApplicationController
  def new
  end

  def create 
    user = user_params 
    if user[:name].nil? || user[:name].empty? 
      redirect_to controller: 'sessions', action: 'new'
    else 
      session[:name] = user[:name]
      redirect_to '/'
    end 
  end 

  def destroy 
    if !session[:name].nil?
      session[:name] = nil 
    end 
    redirect_to controller: 'sessions', action: 'new'
  end 
end

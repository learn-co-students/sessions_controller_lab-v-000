class SessionsController < ApplicationController
  
  def index
  end

  def new
  end

  def create
  	if params[:name].nil? || params[:name].empty?
  		redirect_to '/sessions/new'
  	
  	else params[:name]
  			session[:name] = params[:name]
  			redirect_to '/'
  	end
  end

  def destroy
  	if session[:name] != nil 
      session.delete :name
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end

  end
end

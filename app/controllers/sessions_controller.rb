class SessionsController < ApplicationController

  def new
  end

  def create
  	session[:name] = params[:name]

  	unless session[:name].present?
  		redirect_to '/sessions/new' 
  	else
  		redirect_to '/'
  	end
  end

 

  def destroy
  	# byebug
  	if session[:name].present?
  		# byebug
  		session.delete(:name)
  		redirect_to '/login'
  	else 
  		session[:name] = nil
  		redirect_to '/login'
  	end
  	
  end
end

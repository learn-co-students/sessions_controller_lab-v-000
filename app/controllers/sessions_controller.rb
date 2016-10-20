class SessionsController < ApplicationController
  def new
  end


  def create
  	# if user is not logged in || enter a name redirect them 
  	# 
    if  !params[:name] || params[:name].empty?
   		 redirect_to controller: 'sessions', action: 'new'
   		else
  	# set session to username 
  		session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'

  	end 
  end

  def destroy
  	session.delete :name
  	redirect_to controller: 'sessions', action: 'new'
  end

end

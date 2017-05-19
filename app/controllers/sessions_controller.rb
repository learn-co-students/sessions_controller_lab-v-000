class SessionsController < ApplicationController
  def new
  	if session.has_key?(:name)
  		redirect_to '/'
  	end
  end

  def create
  	if params[:name] == "" || params[:name].nil?
	  	redirect_to sessions_new_path
		else 
			session[:name] = params[:name]
 	  	redirect_to '/'
  	end
  end

  def destroy
  	session.delete(:name)
  	redirect_to '/'
  end
end

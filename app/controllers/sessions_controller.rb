class SessionsController < ApplicationController
  def new
  end

  def create
  	if session.include?(:name) && session[:name] != ""
  		redirect_to root_path
  	else
	  	if params.include?(:name) && params[:name] != ""
	  		session[:name] = params[:name]
	  	else
	  		redirect_to login_path
	  	end
	end
  end

  def destroy
  	session.delete :name
  	redirect_to root_path
  end
end

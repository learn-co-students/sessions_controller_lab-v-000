class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:name].blank? || params[:name].nil?
  		redirect_to :login
  	else
	  	session[:name] = params[:name]
	  	redirect_to '/'
	  end
  end

  def destroy
  	session.destroy if !session[:name].nil?
  end
end

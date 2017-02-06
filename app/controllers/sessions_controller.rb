class SessionsController < ApplicationController

  def new
  end

  def create
  	if params[:name].nil? || params[:name].empty?
  		redirect_to action: 'new'
  	else
  	  session[:name] = params[:name]
  	  redirect_to '/'
  	end
  end

  def destroy
  	if session[:name] == nil
  		#do nothing
  	else
  	session.delete :name
  end
  redirect_to action: 'new'
  end

end
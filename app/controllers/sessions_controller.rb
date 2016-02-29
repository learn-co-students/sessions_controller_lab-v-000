class SessionsController < ApplicationController
  
  def home
  	render 'hello'
  end

  def new

  end

  def create
  	if params[:name].nil? || params[:name].empty?
  		redirect_to '/sessions/new'
  	else
  		session[:name] = params[:name]
  		redirect_to root_path
  	end
  end

  def destroy
  	session.delete(:name) unless session[:name].nil?
  	redirect_to '/sessions/new'
  end

  

end

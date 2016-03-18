class SessionsController < ApplicationController
  before_action :require_valid_name, only:[:create]
  
  
  


  # login GET  /login(.:format)  sessions#new
  def new
  end
  
  #POST /login(.:format)  sessions#create
  def create
  	session[:name] = params[:name]
  	redirect_to '/'
  end

  def destroy
  	session.delete(:name) if session.include? :name
  	redirect_to login_path
  end

  private
  def require_valid_name
  	redirect_to login_path if (params[:name].nil? || params[:name] =="")
  end



end

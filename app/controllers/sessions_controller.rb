class SessionsController < ApplicationController
  def new
  end
  
  def create 
    # binding.pry
    if params[:name] == nil || params[:name] == ''
      redirect_to sessions_new_url
    else 
     session[:name] = params[:name]
     redirect_to root_path
   end
  end 
  
  def destroy
    # binding.pry
    if session[:name]
      session.delete :name
    end 
     redirect_to sessions_new_url
  end 
  
end

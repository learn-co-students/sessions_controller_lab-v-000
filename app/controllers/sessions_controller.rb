class SessionsController < ApplicationController
  def create
      
    if !params[:name] || params[:name].empty?
    	redirect_to sessions_new_path	
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end


  def destroy
  	if session.include?(:name)
  		session[:name] = nil
  	end
  end

  def new

  end
end

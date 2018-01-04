class SessionsController < ApplicationController
  def new
  end
  
  def create 
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    
  #  if params[:name] && params[:name] != ""
  #    #raise params.inspect
      session[:name] = params[:name]
  #    redirect_to '/'
  #  else 
      redirect_to controller: 'application', action: 'hello' 
  #  end 
  end 
  
  def destroy 

    #raise params.inspect
    if session[:name] == nil 
      redirect_to :sessions_new
    else 
      #raise session.inspect
      session.delete :name 
      #raise session.inspect
      redirect_to 'sessions_new'
    end 
  end 

end


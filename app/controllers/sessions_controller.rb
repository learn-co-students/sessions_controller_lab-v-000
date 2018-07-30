class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
# return redirect_to(controller: 'sessions',
#   action: 'new') if !params[:name] || params[:name].empty?
#   session[:name] = params[:name]
#   redirect_to controller: 'application', action: 'hello'
  end

  def destroy 
    if session[:name]
    session.delete :name
    end
    redirect_to root_path
    #redirect_to controller: 'application', action: 'hello'
  end
end

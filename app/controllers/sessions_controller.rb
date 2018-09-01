class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to('/login') 
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
    # OR 
    #return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    #session[:name] = params[:name]
    #redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to '/'
    # OR 

    #session.delete :name
    #redirect_to controller: 'application', action: 'hello'
  end

end
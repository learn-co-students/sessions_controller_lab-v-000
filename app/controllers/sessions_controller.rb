class SessionsController < ApplicationController
  def new
    #renders :new (login page)
  end

  def create
    if !params[:name] || params[:name].empty?
      return redirect_to(controller: 'sessions', action: 'new') 
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'new'
  end
end

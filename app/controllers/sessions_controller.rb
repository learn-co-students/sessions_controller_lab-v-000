class SessionsController < ApplicationController

  def new
  end

  def create
   return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
   session[:name] = params[:name]
   redirect_to root_url
  end

  def destroy 
    session.delete :name
    redirect_to root_url
  end
end

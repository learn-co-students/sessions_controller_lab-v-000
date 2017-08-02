class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name] != ""#return redirect_to(controller: 'sessions',
      session[:name] = params[:name] #action: 'new') if !params[:name] || params[:name].empty?
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end              #redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
end

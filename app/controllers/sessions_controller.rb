class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name].present?
        session[:name] = params[:name]
        redirect_to root_path
    else
        redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end 

end


class SessionsController < ApplicationController
  def index
  end
  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end
  def destroy
    session.delete :name
    
    redirect_to '/login'
  end
end

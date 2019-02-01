class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if !params[:name].present?
      redirect_to '/login'
    else session[:name] = params[:name]
      redirect_to '/'    
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end

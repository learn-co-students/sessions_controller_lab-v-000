class SessionsController < ApplicationController

  def new
  end

  def create

    if params[:name].nil? || params[:name].blank?
      #raise params.inspect
      redirect_to '/login'
    else
      #raise params.inspect
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end

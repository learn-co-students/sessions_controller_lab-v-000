class SessionsController < ApplicationController
  def new
  end

  def create
    if !session[:name]
      if !params[:name].blank?
        session[:name] = params[:name]
        redirect_to '/'
      else
        redirect_to '/sessions/new'
      end
    else
      redirect_to '/'
    end
  end

  def destroy
    session.clear
    render 'new'
  end
end

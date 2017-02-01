class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name].nil? && params[:name].blank?
      redirect_to(controller: :sessions, action: :new)
    else
      session[:name] = params[:name]
      redirect_to(controller: :application, action: :hello)
    end
  end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end
end

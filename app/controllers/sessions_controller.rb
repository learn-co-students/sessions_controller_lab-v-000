class SessionsController < ApplicationController

  def new
    binding.pry
    session[:name]
  end

  def create
    if :name.nil?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      render 'application/hello'
    end
  end

  def destroy
    session.delete :name
  end
end

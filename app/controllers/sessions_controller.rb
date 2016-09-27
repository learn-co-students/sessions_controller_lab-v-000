require 'pry'

class SessionsController < ApplicationController

  def new
    binding.pry
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    render 'new'
  end

end

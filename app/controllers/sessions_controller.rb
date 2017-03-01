require 'pry'

class SessionsController < ApplicationController

  def new
    render :new
  end

  def index
    binding.pry
  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to(controller: 'sessions', action: 'new')
  end

end

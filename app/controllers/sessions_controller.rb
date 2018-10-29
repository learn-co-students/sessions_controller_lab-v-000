class SessionsController < ApplicationController
  def new
  end

  def create
    # raise params.inspect
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    # binding.pry
    # raise params.inspect
    if session[:name].present?
      session.delete(:name)
    end
    redirect_to '/'
  end
end

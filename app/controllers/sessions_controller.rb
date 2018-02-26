class SessionsController < ApplicationController
  skip_before_action :authentication_required, only: [:new, :create]

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    reset_session
    redirect_to '/sessions/new'
  end
end

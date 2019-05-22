class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name]== nil || params[:name].empty?
      redirect_to login_url

    end

  end

  def destroy
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil?
      redirect_to '/login'
    end
  end

  def destroy
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    if !session[:name] || session[:name] == []
      render "new"
    else
      redirect_to '/'
    end
  end
end

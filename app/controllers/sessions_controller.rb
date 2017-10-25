class SessionsController < ApplicationController
  def new
  end

  def create
    if invalid_name?
      redirect_to '/login'
    else
      login
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end

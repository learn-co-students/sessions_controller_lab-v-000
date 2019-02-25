require 'pry'

class SessionsController < ApplicationController

  def new
  end

  def create
    if sets_session_name
       redirect_to '/'
     else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :username
    session.delete :name
  end

end

require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if session[:name] == nil
      redirect_to sessions_new_path
    end
  end
end

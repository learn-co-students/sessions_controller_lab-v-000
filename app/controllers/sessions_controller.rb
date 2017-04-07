require 'pry'

class SessionsController < ApplicationController
  def new
  end


  def create

      session[:name] = params[:name]
      # binding.pry
      if !!session[:name].nil? || !!params[:name].empty?
        redirect_to sessions_new_path
      else
        redirect_to root_path
      end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

end

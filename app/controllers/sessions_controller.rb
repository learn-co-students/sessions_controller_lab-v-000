class SessionsController < ApplicationController


  def new

  end


  def create
    # binding.pry
    if params[:name] && !params[:name].empty?
       session[:name] = params[:name]
       redirect_to '/'
    elsif params[:name] == nil
       redirect_to '/sessions/new'
    elsif params[:name].empty?
      # binding.pry
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end


  def destroy
    # binding.pry
    if !session[:name].nil?
      # binding.pry

      session.delete :name
    end

  end

end

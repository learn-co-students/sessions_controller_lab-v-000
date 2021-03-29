class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
       redirect_to :login
    else
       session[:name] = params[:name]
       redirect_to '/'
    end

    #other way
    # return redirect_to(controller: 'sessions',
    #                    action: 'new') if !params[:name] || params[:name].empty?
    # session[:name] = params[:name]
    # redirect_to controller: 'application', action: 'hello'
  end


  def destroy
     if  !session[:name].nil?
       session.delete :name
     end
     redirect_to '/'
     #or redirect_to controller: 'application', action: 'hello'
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create

    ## One way to solve this...
    # if params[:name].nil? || params[:name].empty?
    #   redirect_to login_path
    # else
    #   session[:name] = params[:name]
    #   redirect_to root_path
    # end

    ## The exact same results as above code...
    return redirect_to controller: 'sessions', action: 'new' if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end

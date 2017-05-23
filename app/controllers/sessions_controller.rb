class SessionsController < ApplicationController

  def new
  end

  def create

    # return redirect_to("New", "SessionsController") if params[:name].nil?
    return redirect_to(:controller => 'sessions', :action => 'new') if params[:name].blank?
    session[:name] = params[:name]
    redirect_to(:controller => 'application', :action => 'hello')
  end

  def destroy
    session[:name] = params[:name] = nil
    redirect_to(:controller => 'application', :action => 'hello')
  end

end

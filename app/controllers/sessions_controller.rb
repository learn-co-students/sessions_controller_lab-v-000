class SessionsController < ApplicationController
  helper :sessions

  def new

  end

  def create
    if params[:name].blank?
      return redirect_to(controller: 'sessions', action: 'new')
    end

    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
      session.delete :name
  end
end

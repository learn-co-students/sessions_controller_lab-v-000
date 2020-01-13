class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      # render "new" # If I use this, it fails the tests, and the URL looks like /login?method=post
      redirect_to login_path # But this passes the tests, and the URL looks like /login
    end
  end

  def destroy
    if session[:name].present?
      session.destroy # The solution instead uses 'session.delete :name', which works as well.
      # session.delete :name
    end

    redirect_to root_path # This should happen, regardless of whether session[:name] is present.
    # However, #destroy should only be called when session[:name] is present, so this is an edge case.
  end
end

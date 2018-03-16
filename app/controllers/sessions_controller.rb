class SessionsController < ApplicationController
  def new
  end

# SessionsController post create redirects to the login page if :name is nil
# SessionsController post create redirects to login page if :name is empty
# SessionsController post create sets session[:name] if :name was given
# SessionsController post create redirects to "/" if logged in
  def create
    @session = Session.find(params[:name])
    session[:name] = params[:name]
      if :name == nil || :name.empty?

      redirect_to 'login'

        end
  end

  # SessionsController post destroy leaves session[:name] nil if it was not set
  # SessionsController post destroy clears session[:name] if it was set
  def destroy
    session.delete :name
  end
end

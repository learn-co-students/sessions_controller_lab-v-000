class SessionsController < ApplicationController
  def new # implicitly renders login form - app/views/sessions/new.html.erb
  end

  def create # log in the user
    if params[:name].blank? # nil.blank? and ''.blank? both return true
      flash[:message] = "You must enter your name to log in."
      redirect_to login_path
    else
      session[:name] = params[:name] # log in the user by storing the name entered in form in session hash
      flash[:message] = "You successfully logged in!"
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end
end

# added raise params.inspect to #create method body
# when submitting the form to log in, params has a top-level "name" key
# that points to the value of whatever the user entered in form field

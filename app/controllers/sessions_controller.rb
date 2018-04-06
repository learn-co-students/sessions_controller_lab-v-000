class SessionsController < ApplicationController
  def new
  end

  def create
    # if there is no name in params, or it is blank, redirect to the login page
    if !params[:name] || params[:name] == ''
      redirect_to '/sessions/new'
    else  
    # if there is a valid name, set the session to that value, and redirect to the root page.
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
      session.delete :name
      # new syntax I'm not used to.  specifying the controller, and the action.  Makes sense I guess because we're not currently in the Application Controller, we're in the Sessions Controller.  Also interesting is that #hello is not actually defined in the application controller, I think because there is no logic, it only takes data from the session hash.  #hello is defined as the root route in routes.rb, and the hello view is present as well, duh.
      redirect_to controller: 'application', action: 'hello'
    
  end

end

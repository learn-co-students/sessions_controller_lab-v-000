class SessionsController < ApplicationController

  def new
    binding.pry
  end

  def create 
    if params[:name] == nil || params[:name].blank?
      redirect_to sessions_new_path
    else 
      session[:name] = params[:name]

      redirect_to '/'
    end
  end 

  def destroy 
    session.delete(:name)
  	redirect_to '/'
  end
end


# SessionsController post create redirects to the login page if :name is nil
#      Failure/Error: expect(response).to redirect_to controller: 'sessions', action: 'new'
     
#        Expected response to be a redirect to <http://test.host/sessions/new> but was a redirect to <http://test.host>.
#        Expected "http://test.host/sessions/new" to be === "http://test.host".
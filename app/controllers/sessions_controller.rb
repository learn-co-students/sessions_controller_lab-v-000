class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    #Typically, your create method would look up a user in the database, verify their login credentials, and then store the authenticated user's id in the session.

    #We're not going to do any of that right now. Our sessions controller is just going to trust that you are who you say you are.
 
    def create
        session[:name] = params[:name]
        if session[:name] == nil || session[:name] == ""
            redirect_to '/login'
        else
            redirect_to '/'
        end
    end

    def destroy
        if session[:name]
            session.delete :name
        else
        end
    end
end
class SessionsController < ApplicationController
    
    def new
        # nothing to do here!
    end
 
    def create
        if params[:name] != nil && params[:name] != ""
            session[:name] = params[:name]
            redirect_to '/'
        else
            redirect_to '/login'
        end
    end
    
    def destroy
        if session[:name]
            session.delete :name
        end
    end
end

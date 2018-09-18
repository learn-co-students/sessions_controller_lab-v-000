class SessionsController < ApplicationController
    def new
    end
 
    def create
      if session[:name].blank? && params[:name].blank?
        redirect_to "/sessions/new"
      else
        session[:name] = params[:name]
        redirect_to "/"
      end
    end
    
    def destroy
      session.delete :name
      redirect_to '/'
    end
end

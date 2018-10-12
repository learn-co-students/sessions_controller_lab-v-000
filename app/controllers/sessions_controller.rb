class SessionsController < ApplicationController

def new
end
    
def create
    if params[:name].nil? || params[:name].empty?
        redirect_to :login
        return
    end
    session[:name] = params[:name]
    redirect_to '/'
end

def destroy
    if session[:name] != nil
      session.delete :name
    end
    redirect_to '/login'
end

end
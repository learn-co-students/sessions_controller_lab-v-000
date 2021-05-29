class SessionsController < ApplicationController

    
    def new
    end

    def index
    end

    def create
        if params[:name] == nil || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
    end

end



# A home page or root route.
# If the user is not logged in, the page should show them a login link.
# If the user is logged in, the page should say, "hi, #{name}", and provide a logout link.
# A login page
# Users can enter their name in a form and click 'login'. Thereafter, the app will refer to them by that name.
# If the user does not enter a name, they are not logged in. Return them to the login page.

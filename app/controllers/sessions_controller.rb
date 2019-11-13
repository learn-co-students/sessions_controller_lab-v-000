class SessionsController < ApplicationController

    def new

    end

		def create
				if !params[:name] || params[:name].empty?
					redirect_to(controller: 'sessions', action: 'new')
				else
					session[:name] = params[:name]
					redirect_to '/' 
				end
    end

		def destroy
      if session[:name] == nil
        redirect_to login_path
			else
        session[:name] = nil
        redirect_to login_path
			end
    end
end
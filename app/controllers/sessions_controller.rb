class SessionsController < ApplicationController

    def new

    end

    def create
        session[:name] = sessions_params[:name]
        if session[:name].nil? || session[:name].empty?
            redirect_to login_path
        else
            redirect_to root_path
        end
    end

    def destroy
        if !session[:name].nil?
            session[:name]=nil
        end
        redirect_to login_path
    end

    private
    def sessions_params
        params.permit(:name)
    end

end
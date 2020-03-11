class SessionsController < ApplicationController
    def new
        @user = params[:name]
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to login_path
        else 
            session[:name] = params[:name]
            redirect_to root_path 
        end

    end

    def destroy
        session.delete :name
        redirect_to root_path
    end
end
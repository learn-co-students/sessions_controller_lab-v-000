class SessionsController < ApplicationController
    def new
      redirect_to(controller: 'application', action: 'hello') if session_established?
    end
    
    def create
      return redirect_to(controller: 'sessions', action: 'new') if params_name_blank?
      session[:name] = params[:name]
      redirect_to(controller: 'application', action: 'hello')
    end

    def destroy
      session.delete(:name)
      redirect_to({controller: 'application', action: 'hello'})
    end

    private

    def params_name_blank?
      params[:name].nil? || params[:name].empty? || params[:name].match(/^\s+$/)
    end

    def session_established?
      !session[:name].nil?
    end
end

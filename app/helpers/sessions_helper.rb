module SessionsHelper

    def logged_out?
        params[:name].nil? || params[:name] == ""
    end

    def current_user
        session[:name]
    end

end

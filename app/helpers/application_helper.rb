module ApplicationHelper


    def logged_in?
        !!session[:name] and session[:name] != ""
    end

    def homepage_message
        if logged_in?
            render partial: "home_logged_in"
        else
            render partial: "home_logged_out"
        end
    end
end

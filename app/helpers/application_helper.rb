module ApplicationHelper
    def logged_in?
        session[:name]
    end
end

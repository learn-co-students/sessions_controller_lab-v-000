module SessionsHelper

    def login_user(user) 
      session[:user_id] = user.id
    end 

    def current_user(user) 
        @current_user ||= User.find_by(id: user.id)
    end 
    
    def logged_in?
        !!session[:user_id]
    end 
end

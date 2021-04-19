class SessionsController < ApplicationController 

    def new
    end

    def create
        if params[:name].blank? 
           redirect_to "/login"
        else
          session[:name] = params[:name]
          redirect_to '/'
        end
    end

    #<ActionController::Parameters {"utf8"=>"✓", "authenticity_token"=>"F9qwdbEJzGJbtDXBttMcUXKofweSeyF1qY/m2u4ZTazyUBZe1LdYELTebMKKVHwzGB83N7BeMILDblOK6A64Iw==", 
    #"name"=>"BUFFY", 
    #"method"=>"post", 
    #"controller"=>"sessions", 
    #"action"=>"create"} permitted: false>

    def destroy
        session.delete :name
        redirect_to '/'
    end

end 


class SessionsController < ApplicationController
  def new
    #raise params.inspect
  end
  def create
    #create a name attribute in the session set to the name in teh previous for given by params
    #name cannot accept nil or blank. if that is put in redirect back to new
    session[:name] = params[:name]
    if !params[:name] || params[:name] ==""
          redirect_to '/sessions/new'
    else
          redirect_to '/'
    end

  end
    #deleting the user session
  def destroy
      session.delete :name
      redirect_to '/'
  end
end

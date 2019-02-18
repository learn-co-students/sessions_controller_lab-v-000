class SessionsController < ApplicationController


  def new
  end

  def create

    if !params[:name] || params[:name].empty?
      redirect_to action: "new"
    else
      session[:name] = params[:name]
      redirect_to action: "hello", :controller=>"application"
    end
  end


  def destroy
    session.destroy
    redirect_to action: 'hello', controller: 'application'
  end

end

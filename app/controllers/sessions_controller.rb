# https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-12-authentication/sessions-controller-lab
# Create the sessions controller.
# Note: If you use the generators to generate your controllers be sure to pass
# these flags to avoid generating unneeded files:
# rails generate controller Sessions new --no-helper --no-assets --no-controller-specs.
# new code start
class SessionsController < ApplicationController

  # Write the new, create, and destroy methods.
  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
# new code end

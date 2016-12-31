module ApplicationHelper
  def login_status_action
    if logged_in?
      render :hello
    else
      render :'sessions/new'
    end
  end
end

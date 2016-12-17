module ApplicationHelper
  def hi?
    if user?
      #raise session[:name].inspect
       "Hi, #{@user}." #not displayed in view

    else
      link_to 'You must login first', login_path
    end
  end

  def logout?
    if user?
      link_to "logout", logout_path
    end
  end

  private

  def user?
    !@user.nil? && !@user.empty?
  end
end

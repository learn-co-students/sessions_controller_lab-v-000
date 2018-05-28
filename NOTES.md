RSpec notes:

# o The user GETs /login
# o The user enters their username. There is no password.
# o The user submits the form, POSTing to /login.
# o In the create action of the SessionsController we set a cookie on the user's browser by writing their username into the session hash.
# o Thereafter, the user is logged in. session[:username] will hold their username.

 Prefix Verb URI Pattern       Controller#Action
   root GET  /                 application#hello
  login GET  /login(.:format)  sessions#new
        POST /login(.:format)  sessions#create
 logout POST /logout(.:format) sessions#destroy


# a home page or root route.
# if the user is not logged in, the page should show them a login link.
# if the user is logged in, the page should say, "hi, #{name}", and provide a logout link.
# # a login page
# users can enter their name in a form and click 'login'. Thereafter, the app will refer to them by that name.
# if the user does not enter a name, they are not logged in. Return them to the login page.
# new - GET

# create and destroy - POST

# methods w/views

from new.html.erb:
<%= form_tag ({controller: 'sessions', action: 'create', method: 'post'}) do %>
  <input name=name>
  <input type=submit value='login'>
<% end %>

from spec file:
describe "GET /" do
    it "clears previous session and logs out user" do
      expect(page).to have_link(@sessions, href: session_path(@session))
    end
  end



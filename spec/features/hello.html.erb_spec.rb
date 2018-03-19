require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :feature do
    it "includes a login link if the user is not logged in" do
        visit '/'
        expect(page).to have_link("Login", href: sessions_new_path)
 
    end
end

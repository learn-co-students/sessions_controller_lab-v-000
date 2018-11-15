require 'rails_helper'

describe "root", type: :feature do
  
    describe "Landing page display" do
        it "displays a 'Welcome!' message if no user is logged in" do
            visit root_path
            expect(page).to have_text("Welcome!")
        end

        it "has a login button when there is no set session" do
            visit root_path
            expect(page).to have_button("Login")
        end
    end

    describe "Log in/out behaviours" do
        it "A user is redirected if they do not provide a login name" do
            visit root_path
            click_button 'Login'
            click_button 'login'
            expect(page).to have_xpath("/")
        end

        it "A user can log in from the root page and then see their name on the redirect" do
            visit root_path
            click_button 'Login'
            fill_in 'name', with: 'Doodleboy'
            click_button 'login'
            expect(page).to have_text("Hi, Doodleboy.")
        end

        it "A user is redirected to the root page if they click logout" do
            visit root_path
            click_button 'Login'
            fill_in 'name', with: 'Doodleboy'
            click_button 'login'
            click_button 'logout'
            expect(page).to have_text("Welcome!")
        end
    end
  end
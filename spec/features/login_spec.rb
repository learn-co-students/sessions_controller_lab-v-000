require 'capybara/rails'
require 'capybara/rspec'

describe "login", type :feature do
    before do
        it "links to sessions/new" do
            visit "sessions/new"
            fill_in "name", with "Username!"
            click_button 'login'
        end
    end

    it "redirects to login page" do 
        expect(current_path).to eq("sessions/new")
    end

    it "displays the user's name" do
        within "h1" do
            expect(page).to have_content(name)
        end
    end
end

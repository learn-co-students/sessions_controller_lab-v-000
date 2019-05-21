require 'capybara/rails'
require 'capybara/rspec'

describe "login", type: :feature do
    before do
         visit "/login"
            fill_in "name", with: "Username!"
            click_button 'login'
    end

    describe "login" do
        it "redirects to login page" do 
            expect(current_path).to eq("/")
        end

        it "displays the user's name" do
            within "h1" do
                expect(page).to have_content("Username!")
            end
        end
    end
end

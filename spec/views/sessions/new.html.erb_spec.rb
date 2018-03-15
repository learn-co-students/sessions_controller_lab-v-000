require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  before(:each) { visit sessions_new_path}
  it "Logs a user in" do
    fill_in "name", with: "Travis"
    click_button "login"
    expect(page).to have_content("Travis") 
  end
end

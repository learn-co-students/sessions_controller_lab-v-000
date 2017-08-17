require 'rails_helper'

RSpec.describe "hello", type: :feature do
  before(:each) do
    Capybara.reset_sessions!
  end

  it "displays the user's name after they login" do
    visit '/login'
    fill_in 'name', with: 'pretty boy'
    click_button 'login'
    expect(page.body).to include 'Hi, pretty boy'
  end
end

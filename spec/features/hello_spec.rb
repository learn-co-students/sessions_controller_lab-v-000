require 'rails_helper.rb'

describe 'Feature Test: Home Page', type: :feature do

  before do
    reset_session!
    visit login_path
    expect(current_path).to eq('/login')
    dill_login
  end

  it "greets the user and provides a logout link" do
    visit root_path
    expect(page).to have_css("h1", text: "Hi, Dill.")
    click_button('Logout')
  end

  it "on login, successfully adds a session hash" do
    visit root_path
    expect(page.get_rack_session_key('name')).to_not be_nil
  end

end

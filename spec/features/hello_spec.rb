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
    expect(page).to have_content("Hi, Dill.")
    click_button('Logout')
  end

end

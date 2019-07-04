require_relative "../../rails_helper.rb"

describe "user is logged in", type: :feature do

  before do
    reset_session!
    visit login_path
    expect(current_path).to eq("/login")
    dill_login
  end

  describe "GET /" do
    let(:user) { @current_user }

    it "greets the user and provides a logout link" do
      visit root_path
      expect(page).to have_content("Hi, #{user}.")
      click_button('Logout')
    end
  end

end
